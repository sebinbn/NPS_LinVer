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
%addpath c:/dynare/5.2/matlab  % for Sebin's office laptop
addpath c:/dynare/5.4/matlab % for Sebin's personal laptop

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

inertial = 0; %0 - non-inertial rule or 1 - inertial rule 
atit_tgts = [2.2, 2.25,2.5,3]; %asymmetric target for ATIT rule
acit_coefs = [1,2]; %[0.75,1.5]; %asymmetric coefficient for ACIT
aait_qtrs = [8,16,24]; %the number of qtrs for which avg inflation is calculated
hcit_coefs = [0.75,1,1.25]; %the higher coefficient in Trad.rule

for expvers = "mcapwp" %["var","mceall","mcapwp","mcap"];
for rulevers = ["T","BA"]
% Any one For loop is to be activated amongst the following:
% 1. Running various rules without variants of ACIT, ATIT, AAIT
% 2. Running variants of ATIT with targets varying
% 3. Running variants of ACIT with coefficients varying
% 4. Running variants of AAIT with qtrs averaged varying
% 5. Running variants of intay with higher coefficients (HCIT)

%for mprule = ["intay","short","aait","acit","atit","ait"] %for running various rules without variants of ACIT, ATIT, AAIT
    % acit_coef = 1; %default acit
    % atit_tgt = 3; %default atit
    % aait_qtr = 8; %default aait
    %hcit_coef = 0.5; %default inflation coefficient
%for atit_tgt = atit_tgts %loop over ATIT rule targets defined in atit_tgts
%  mprule = "atit";
%  hcit_coef = 0.5; %default inflation coefficient
for acit_coef = 2%acit_coefs %loop over ACIT coefficients defined in acit_coefs
  mprule = "acit"; 
  hcit_coef = 0.5; %default inflation coefficient
%for aait_qtr = aait_qtrs %for running AAIT with various qtr averages
%  mprule = "aait";
%  hcit_coef = 0.5; %default inflation coefficient
%for hcit_coef = hcit_coefs %for running HCIT variants
%  mprule = "intay";

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
save_name = "saved_results/" + expvers + "_" + rulevers + "_" + mprule;
if mprule == "atit"
    save_name = save_name + "_" + atit_tgt;
elseif mprule == "acit"
    save_name = save_name + "_"+ acit_coef;
elseif mprule == "aait"
    save_name = save_name + "_"+ aait_qtr;
elseif mprule == "intay"
    save_name = save_name + "_" + hcit_coef;
end
save_name = save_name + '_results';
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
clearvars -except inertial expvers rulevers rep atit_tgts acit_coefs aait_qtrs hcit_coefs

end
end
end

