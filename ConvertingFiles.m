
cd /home/helena/PhD/Year3/FluxSamplingPaper/Results/CHRR

%% Convert .mat files to .csv files 

m = load("ResultsCHRR_Poolman2009_D_N5000.mat");

csvwrite("ResultsCHRR_Poolman2009_D_N5000.csv",m.samples)

%% Gather samples in one file 

m1 = load("ResultsCHRR_Gomes2015_A_N5000.mat");
m2 = load("ResultsCHRR_Gomes2015_B_N5000.mat");

m3 = horzcat(m1.samples,m2.samples);

%csvwrite("ResultsCHRR_Gomes2015_A_N10000.csv",m.samples)


%% Split matrix

cd /home/helena/PhD/Year3/FluxSamplingPaper/Results/Long

m1 = load("ResultsCHRR_Arnold2014_A_N10000.mat");

samples = m1.samples(:,1:5000);

save("ResultsCHRR_Arnold2014_D_N5000.mat", 'samples')

samples=m3;
save(filename1c,'samples');

%% Convert csv to .mat

m=csvread('ResultsOPTGP_Arnold2014_C_N100000.csv');
samples = m;
save('ResultsOPTGP_Arnold2014_C_N100000.mat','samples');
