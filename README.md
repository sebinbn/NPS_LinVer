## Modified LINVER code to create results in Nidhiri, Papell, Singh (2024)

[LINVER](https://www.federalreserve.gov/econres/us-models-linver.htm) is a linerised version of the FRB/US model. The FRB/US a large-scale estimated general equilibrium model of the U.S. economy developed by the Federal Reserve Board. LINVER code used here is written in MATLAB.
The original LINVER code has been made public by the Fed. The code here is the original code modified to replicate the results in Nidhiri, Papell, Singh (2024) . This code requires Dynare in MATLAB to run. 

### Major changes
1. Added following new monetary policy rules
   1. Shortfalls rule
   2. Asymmetric Coefficient Inflation Targeting
   3. Asymmetric Target Inflation Targeting
2. Added following new loss functions
   1. Loss functions with changes in FFR
   2. Loss fucntion using unemployment gap instead of output gaps
   3. Asymmetric loss functions
      1. with asymmetry on output gap (penalise negative output gaps only)
      2. with asymmetry on unemployment gap (penalise positive unemployment gaps only)
