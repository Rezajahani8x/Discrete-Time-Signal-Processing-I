function keyboard=dtmf(y,fs)
        key=['1','2','3','A'       %keys
            '4' '5' '6' 'B'
            '7' '8' '9' 'C'
            '*' '0' '#' 'D'];
        fh=[1209,1336,1477,1633];  %high frequencies
        fl=[697,770,852,941];      %low frequencies
        %%-------------Computation of FT-----------------
        t_start=0;
        t_end=length(y)/fs;
        T=t_end-t_start;
        N=fs*T;
        Y=fft(y);
        f=0:fs/N:fs-fs/N;
        Y=Y(1:length(Y)/2);        %cutting the FT to half
        f=f(1:length(f)/2);
        Y=abs(Y);
        %%-------------Finding f_high f_low-------------
        X=sort(Y);
        peaks=X(end-1:end);
        index1= Y==peaks(1);
        index2= Y==peaks(2);
        F=[f(index1) f(index2)];
        F=sort(F);
        f_high=F(2);
        f_low=F(1);
        %%----------------finding the key---------------
        for i=1:4
            flag=0;
            for j=1:4
                if f_high>fh(i)-10 && f_high<fh(i)+10 
                    if f_low>fl(j)-10 && f_low<fl(j)+10
                        flag=1;
                        break;
                    end
                end
            end
            if flag==1
                break;
            end
        end
        %%--------------Assigning the output-----------
        keyboard=key(j,i);
end