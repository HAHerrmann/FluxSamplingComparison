function failR = gelmanRubinALL(ALLchains,num)
    failR = [];
    x=size(ALLchains{1});
    len = x(1);
    for r=1:1:len
        m1 = ALLchains{1};
        m2 = ALLchains{2};
        m3 = ALLchains{3};
        R = ipsrf(m1(r,1:num).',m2(r,1:num).',m3(r,1:num).');
        if R>1.1 || R<0.9
            failR = [failR, r];
        end
end