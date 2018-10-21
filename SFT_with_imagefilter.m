%% 
close all
for k = 1:10    % batch production

[sig,fs]=audioread(['rl',num2str(k),'.wav']); %**********
%[sig,fs]=audioread('rec_1.wav');  %*********
L = length(sig);
sig_1 = sig(:,1);
sig_2 = sig(:,2);
window = 2048;   %256
noverlap = 2000;  %200
nfft = 2048;     %256

[S1,F1,T1,P1] = spectrogram(sig_1,window,noverlap,nfft,fs);
[S2,F2,T2,P2] = spectrogram(sig_2,window,noverlap,nfft,fs);

%% plot the figure of SFT
figure(1);
subplot(2,1,1)

surf(T1,F1,10*log10(abs(P1)),'EdgeColor','none');
axis xy;axis tight;colormap(jet);view(0,90);
xlabel('time');ylabel('frequency');
axis([0 1 17000 19000]); axis off; % hide the axis details

subplot(2,1,2)

surf(T2,F2,10*log10(abs(P2)),'EdgeColor','none');
axis xy;axis tight;colormap(jet);view(0,90);
xlabel('time');ylabel('frequency');
axis([0 1 17000 19000]); axis off; % hide the axis details

%% save the figure

saveas(gcf,'imacquired.jpg');

%% pre treat of the spectrogram
%%%%%% crop the image
rgb = imread('imacquired.jpg');
rgb = imcrop(rgb, [120 40 670 550]);
I = rgb2gray(rgb);

%%%%%% low pass
fgaussian7_05 = fspecial('gaussian',7,0.5);
I_low = filter2(fgaussian7_05,I);
mini = min(min(I_low));
maxi = max(max(I_low));
I_low = (I_low-mini)/(maxi-mini);

%figure(2)
%imhist(I_low);
%figure(3)
%imshow(I_low);

%%%%%% threshold segmentation
[width,height]=size(I_low);
%T1=175;
ts=0.55;
for i=1:width
    for j=1:height
       if(I_low(i,j)<ts)
            I_low(i,j)=0;
        else 
            I_low(i,j)=1;
        end
    end
end
%figure(4)
%imshow(I_low);

%%%%%% median filter
I_m = medfilt2(I_low, [3 3]);
figure(5)
imshow(I_m);
saveas(gcf,'imout.jpg');    

%%%%%% change the size of image
Iout = imresize(I_m,[227,227]);
Iout = repmat(Iout, 1, 1, 3);  % change to 3 channal to fix AlexNet
%imwrite(Iout,'zo26.jpg');    %***********

imwrite(Iout,['rl',num2str(k),'.jpg']);     %**********
end