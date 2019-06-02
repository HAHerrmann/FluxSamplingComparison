%% Sampling from the Arnold model across genotypes and conditions 
rng(12)

cd /opt/gurobi810/linux64/matlab
gurobi_setup

cd /home/helena/cobratoolbox/
initCobraToolbox
changeCobraSolver('gurobi','all')

cd /home/helena/PhD/Year3/FluxSamplingPaper/Results/

%% Reading in the models
ColControl = readCbModel('ANmodel2014_Col0Control.xml');
ColCold = readCbModel('ANmodel2014_Col0Cold.xml');
FumControl = readCbModel('ANmodel2014_Fum2Control.xml');
FumCold = readCbModel('ANmodel2014_Fum2Cold.xml');

modls=[ColControl,ColCold,FumControl,FumCold];
modlsname=["ANmodel2014_ColdControl","ANmodel2014_Col0Cold","ANmodel2014_Fum2Control","ANmodel2014_Fum2Cold"];

%% Sampling CHRR
for i=[1,2]
    smpls = 100000;
    thns = 10000;
    many_samples(modls(i),smpls,thns,modlsname(i));
end 

%% Sampling RAVEN
% cd /home/helena/SoftwareInstalls/RAVEN-2.2.1/core/
% addpath /home/helena/SoftwareInstalls/RAVEN-2.2.1/solver/
% [solns,~] = randomSampling(model, 100);
