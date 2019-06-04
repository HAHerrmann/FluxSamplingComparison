%Testing the sampling algorithms in COBRA 

rng(846) %Set seed

%% Package requirements 
cd /opt/gurobi810/linux64/matlab
gurobi_setup

cd /home/helena/cobratoolbox/
initCobraToolbox
changeCobraSolver('gurobi','all')

cd /home/helena/PhD/Year3/FluxSamplingPaper/Results/


%% Looping through the models

for i=[100,1000,10000] 
    for n=["Arnold2014","Poolman2009","Gomes2010"]
    %n = "Gomes2010"; %
        filename = insertBefore('.xml',1,n);
        disp("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX")
        disp(filename)
        disp("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX")
        model1 = readCbModel(filename);
        disp(size(model1.rxns))
        %sDens1 = single_sample(model1);
        %disp(sDens1)
        sDens1 = i;
        many_samples(model1,5000,sDens1,n);
    end
end
disp("Done Sampling!")
