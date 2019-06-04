function PSRFlist = gelmanRubin(ALLchains,num,r)
    optgpRList = [];
    for i = 100:100:num
        m1 = ALLchains{1};
        m2 = ALLchains{2};
        m3 = ALLchains{3};
        %chain_r = {m1(r,1:i).',m2(r,1:i).',m3(r,1:i).'};
        %[R,~,~] = psrf(chain_r);
        R = ipsrf(m1(r,1:i).',m2(r,1:i).',m3(r,1:i).');
        optgpRList = [optgpRList, R];
    end
    PSRFlist = optgpRList;
    disp("Gelman-Rubin PSRF computed")
end

