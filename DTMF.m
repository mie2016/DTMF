fc = [697 770 852 941];%��ƵƵ��
fr = [1209 1336 1477];%��ƵƵ��

Fs=8000;%�ɼ���8000
lasted_time=0.3;%DTMF����ʱ��
compound=[];
numString='0123456789';

for i=1:length(numString)
    switch numString(i)
        case '1' 
            freq_low=fc(1);freq_Hgh=fr(1);
        case '2'
            freq_low=fc(1);freq_Hgh=fr(2);
        case '3'
            freq_low=fc(1);freq_Hgh=fr(3);
        case '4'
            freq_low=fc(2);freq_Hgh=fr(1);
        case '5'
            freq_low=fc(2);freq_Hgh=fr(2);
        case '6'
            freq_low=fc(2);freq_Hgh=fr(3);
        case '7'
            freq_low=fc(3);freq_Hgh=fr(1);
        case '8'
            freq_low=fc(3);freq_Hgh=fr(2);
        case '9'
            freq_low=fc(3);freq_Hgh=fr(3);
        case '0'
            freq_low=fc(4);freq_Hgh=fr(2);
        case '*'
            freq_low=fc(4);freq_Hgh=fr(1);
        case '#'
            freq_low=fc(4);freq_Hgh=fr(3);
        otherwise
            error('naive!');
    end
    
    single=wav(freq_low,freq_Hgh,Fs,lasted_time);%���������ź�
    single=[single,zeros(1,800)];%���ż��
    compound=[compound,single];%�ϳɲ�����
end

sound(compound,Fs);
audiowrite('test.wav',compound,Fs);
    