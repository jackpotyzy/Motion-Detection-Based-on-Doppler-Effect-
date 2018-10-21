clearvars; close all; clc;
%% 
%%%%%% parameter setting and single-tone audio generation
duration = 1;
nBlocks = 2;    %%%%%% change the blocks number
fs = 44100;     %%%%%% 44100
toneFreq = 21000; %% frequency
nSeconds = 5;     %% time to generate ultrasonic
s = sin(2*pi*toneFreq*(0:1/fs:nSeconds-1/fs));  % s = sin(2*pi*toneFreq*(0:1/fs:nSeconds-1/fs));
sound(s,fs);

%%%%%% audio acquisition and analysis
Micro = audiorecorder(fs,16,2);
prune_len = 0.3;

for i = 1:nBlocks
    recordblocking(Micro,duration+prune_len);
    x_temp = getaudiodata(Micro);
    x_temp1 = x_temp(:,1);
    x_temp2 = x_temp(:,2);
    
    x1 = x_temp1(prune_len*fs+1:end);  
    x2 = x_temp2(prune_len*fs+1:end);  
    
    x1 = x1/max(abs(x1));
    x2 = x2/max(abs(x2));
    x = [x1 x2];
    audiowrite(['rec_',num2str(i),'.wav'],x,fs); 
    
%%%%%% read the original recorded sound
    L = length(x1);
    t = (0:L-1)/fs;
    h = figure(1);
    
    Y1 = fftshift(abs(fft(x1)/L));
    Y1 = Y1/max(abs(Y1));
    f = fs*(0:L/2-1)/L;
    
    subplot(2,2,2);
    plot(f/1e3,Y1(round(L/2)+1:L));
    title('amplitude spectrum of current audio signal block')
    xlabel('frequency (kHz)');ylabel('normalized amplitude');grid minor 
    xlim([0 fs/2/1e3])
    
    Y = fftshift(abs(fft(x)/L));
    Y = Y/max(abs(Y));
    f = fs*(0:(L/2)-1)/L;
    
    subplot(2,2,4);   %%%%%% plot
    plot(f/1e3,Y(round(L/2)+1:L));
    title('amplitude spectrum of current audio signal block')
    xlabel('frequency (kHz)');ylabel('normalized amplitude');grid minor
    xlim([0 fs/2/1e3])
    
    if i == 1
        hwait = WaitBarCreate('Parent',h,'Position',[0.07,0.07,0.38,0.05],...
            'BarType','Bar','FillColor','r','Alpha',0.5,'Steps',100,...
            'Percent',0.5,'BorderColor','b','BorderStyle','-');
    end
    
    Y2 = fftshift(abs(fft(x2)/L));
    Y2 = Y2/max(abs(Y2));
    f =fs*(0:(L/2)-1)/L;
    
    subplot(2,2,4);   %%%%%% plot
    plot(f/1e3,Y2(round(L/2)+1:L));
    title('Amplitude spectrum of current audio signal block')
    xlabel('Frequency (kHZ)');ylabel('normalized amplitude');grid minor
    xlim([0 fs/2/1e3])
    
    subplot('Position',[0.08,0.315,0.4,0.6]);      %%%%%% plot
    spectrogram(x1,2048,2000,2048,fs,'yaxis','onesided');  %% STFT
    title('Spectrogram of current audio signal block');
    
    mTextBox = uicontrol('style','text');
    str = ['Audio acquisition and analysis in progress... ',...
        num2str(i/nBlocks*100,'%.2f'),'%'];
    set(mTextBox,'String',str,'units','normalized','FontSize',10,...
        'Position',[0.1,0.14,0.32,0.03]);
    WaitBarUpdate(hwait,'Percent',i/nBlocks);
end