% ******************************************************************
% Program to run stochastic simulations of LINVER under various
% assumptions for agents' expectations, monetary policy, selected
% dynamics of the economy, and the manner in which random shocks
% are drawn. Users should review the stochsims user manual prior to
% setting parameters and running the program.
%
% Note: Dynare is used to process the model file and generate the
% decision-rule matrices, so the user must set the path to the
% Dynare directory before running the program.
%*******************************************************************

clear all;

% Provide the path to Dynare (eg, addpath c:/dynare/5.0/matlab)
addpath c:/dynare/5.2/matlab  % for Sebin's office laptop
%addpath c:/dynare/5.4/matlab

% Supply model settings (mandatory unless otherwise indicated)
%   rulevers -- Taylor 'T' or Balanced Approach  'BA' Rules
%   expvers -- expectational version of the model
%   mprule -- the federal funds rate rule
%   elb_imposed -- "yes" or "no"
%   elb -- lower limit of RFF (mandatory if ELB imposed)
%   tax_gamma -- optional setting for the cyclicality of the trend
%     personal tax rate TRPTS (default is .00125 for full model
%     consistent expectations, .00075 for other expectational
%     cases)
%   ctp_option -- optional switch indicating standard model
%     cyclical term premium effects if 0 (default), suppression of
%     all cyclical TP effects if 1, and alternative more stable
%     estimated cyclical TP effects if 2
%   ecfs_option -- optional switch indicating application of
%     extreme case fiscal stabilization to prevent the expected
%     output gap from falling too low
%   ecfs_floor -- optional ECFS-induced lower bound on the
%     expected output gap (default is -15)

inertial = 1; %0 - non-inertial rule or 1 - inertial rule 

for expvers = "mcapwp" %["var","mceall","mcapwp","mcap"];
for rulevers = "BA" %["T","BA"]
for mprule = ["intay","short","aait","acit","atit","ait"]
    %for aait_mod = [2] %0 - Shortfalls,8 - AAIT, 1 - ACIT,  4 = AAIT4yr, 9 - ATIT, 2 - traditional, 3 - AIT
 
    
    
elb_imposed = "yes";
elb = -3;  % required only if elb_imposed = "yes"
%tax_gamma = .00075;
%ctp_option = 2;
%ecfs_option = "no";
%ecfs_floor = -25;



% Supply optional monetary policy settings
%   elbqtrs -- number of quarters the ELB imposed on the expected
%     RFF path (default is 1 under VAR expectations and 61
%     otherwise)
%   asymqtrs -- number of quarters the expected RFF path is forced
%     to conform to the prescriptions of a nonlinear rule, if
%     selected (default is elbqtrs if defined, 61 otherwise except
%     under VAR expectations)
%   uthresh_imposed -- "yes" or "no" to imposing an unemployment
%     gap threshold that must be satisfied for liftoff from the ELB
%     (default is "no")
%   pithresh_imposed -- "yes" or "no" to imposing an inflation
%     threshold that must be satisfied for liftoff from the ELB
%     (default is "no")
%   uthresh -- value of unemployment gap threshold, if imposed
%   pithresh -- value of inflation threshold, if imposed
%   pithresh_var -- measure used to define threshold, if imposed
%   maxfgq -- the number of quarters the unemployment and inflation
%     threshold condition are imposed on the expected RFF path
%     (optional, default is elbqtrs)

%elbqtrs = 101;
%asymqtrs = 21;
%uthresh_imposed = "yes";
%uthresh = 0;
%pithresh_imposed = "yes";
%pithresh = 0;
%pithresh_var = "picx4";
%maxfgq = 21;




% Supply optional simulation parameters
%   add_track_names -- variables for which simulation results are
%     retained in addition to the default set
%   nreplic -- number of simulated outcomes (default is 5000)
%   nsimqtrs -- length in quarters of each outcome (default is 200)
%   residuals_file -- name of text file of historical equation
%     shocks (default is "hist_residuals.txt")
%   draw_method -- sampling procedure (default is "state")
%   res_drop -- names of shocks to be excluded
%   alt_range -- alternative historical range for sample (default
%     is ["1970Q1","2019Q4"])
 %   rescale_wpshocks -- rescaling of pre-1983 wage and price
%     residuals to match post-1982 variances (default is "yes")
%   save_option -- "full" or "limited" results saved to disk
%     (default is "none")
%   save_name -- name of file in current directory where results are
%     saved if save_option is invoked (default is stochsims_results)

add_track_names = ["fiscal","rrff"];
%nreplic = 300;
%nsimqtrs = 300;
%residuals_file = 'hist_residuals.txt';
%draw_method = "mvnorm";
%res_drop = ["pbfir_l_aerr","pegfr_l_aerr","pegsr_l_aerr","phr_l_aerr","pxr_l_aerr"];
%alt_range = ["1983Q1","2019Q4"];
%rescale_wpshocks = "no";
save_option = "limited";
if mprule == "aait"
    if aait_mod == 0
        save_name = 'saved_results/' + expvers + "_shortfalls_results";
    elseif aait_mod == 1
        save_name = 'saved_results/' + expvers + "_acit_results";
    elseif aait_mod == 8
        save_name = 'saved_results/' + expvers + "_aait8_results";
    elseif aait_mod == 9
        save_name = 'saved_results/' + expvers + "_atit_results";
    end
else
    save_name = 'saved_results/' + expvers + '_' + mprule + "_results";
end



% Verify the validity of user-selected settings and define various
% parameters used in stochastic simulations

make_parameters;
if fail_flag == "yes"
    return
end



% Construct the version of the model to be stochastically simulated
% based on the user-supplied and default parameter settings and
% process it using DYNARE

make_runmod_NPS;
if fail_flag == "yes"
    return
end



% Retrieve DYNARE results and construct various matrices and
% namelists to be used to run stochastic simulations

make_matrices;



% Construct a matrix of shocks randomly sampled from the set of
% historical shocks to be applied in the stochastic simulations

make_shocks;
if fail_flag == "yes"
    return
end



% Run the stochastic simulations and then compute summary
% statistics

stochloop;



% Compute summary statistics and if selected, save results

summarize_results_NPS;
clearvars -except expvers rulevers mprule aait_mod

end
end
end
