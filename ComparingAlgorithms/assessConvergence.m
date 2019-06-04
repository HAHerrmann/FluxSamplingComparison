%% Generate graphs for assessing convergence

%% Package requirements 
cd /opt/gurobi810/linux64/matlab
gurobi_setup

cd /home/helena/cobratoolbox/
initCobraToolbox
changeCobraSolver('gurobi','all')

cd /home/helena/PhD/Year3/FluxSamplingPaper/Results/ACHR/

addpath('/home/helena/SoftwareInstalls/mcmcstat/')
addpath('/home/helena/SoftwareInstalls/mcmcdiag/')

addpath('/home/helena/PhD/Year3/FluxSamplingPaper/Results/')

%% 
mnames = ["Arnold2014","Poolman2009","Gomes2010"];
brs = [549,205,48];

%% Looping through the files
for i=[1,2,3]
    %% Model specifications
    mname = mnames(i);
    disp(mname)
    algoname = 'ACHR';
    %no = 100000;
    no=5000;
    br = brs(i); % 'biomass' reaction

    %% Loading the sample files 
    OPTGPchains = read_chains(mname,algoname);

    %% Computing the Gelman-Rubin IPSRF
    gRlist = gelmanRubin(OPTGPchains,no,br);
    
    %% Computing the Gelman-Rubin IPSRF for all Reactions
    failRs = gelmanRubinALL(OPTGPchains,no);
    disp("No of Reactions which fail IPSRF:")
    size(failRs)

    %% Computing the XY deviation
    gDev = xyDeviation(OPTGPchains,br,no);

    %% Plotting
    plottingOutput(gRlist,gDev,no,mname,algoname)
end
