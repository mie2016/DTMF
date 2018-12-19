function single = wav(freq_low,freq_Hgh,Fs,lasted_time)
    single = 0.25*sin(2*pi*freq_low*[1/Fs:1/Fs:lasted_time])+...
    0.25*sin(2*pi*freq_Hgh*[1/Fs:1/Fs:lasted_time]);
    
end

