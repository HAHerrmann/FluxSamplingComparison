function SampleChains = read_chains(modelname,algo)
s1 = 'CHRR';
s2 = algo;
n = min(numel(s1),numel(s2));
    if sum(cumprod(s1(1:n)==s2(1:n)))
        filename1 = insertBefore('Results__A_N10000.mat',9,modelname);
        filename1a = insertBefore(filename1,8,algo);
        filename1 = insertBefore('Results__B_N10000.mat',9,modelname);
        filename1b = insertBefore(filename1,8,algo);
        filename1 = insertBefore('Results__C_N10000.mat',9,modelname);
        filename1c = insertBefore(filename1,8,algo);
        %% Loading the sample files 
        m = load(filename1a);
        m1 = m.samples;
        m = load(filename1b);
        m2 = m.samples;
        m = load(filename1c);
        m3 = m.samples;
        SampleChains = {m1,m2,m3};
        disp("CHRR chains read in")
    else 
        filename1 = insertBefore('Results__A_N5000_T10000.csv',9,modelname);
        filename1a = insertBefore(filename1,8,algo);
        filename1 = insertBefore('Results__B_N5000_T10000.csv',9,modelname);
        filename1b = insertBefore(filename1,8,algo);
        filename1 = insertBefore('Results__C_N5000_T10000.csv',9,modelname);
        filename1c = insertBefore(filename1,8,algo);
        %% Loading the sample files 
        m1 = transpose(csvread(filename1a));
        m2 = transpose(csvread(filename1b));
        m3 = transpose(csvread(filename1c));
        SampleChains = {m1,m2,m3};
        disp("ACHR/OPTGP chains read in")
    end
end