 function varargout = figure_of_Detection(varargin)
% FIGURE_OF_DETECTION MATLAB code for figure_of_Detection.fig
%      FIGURE_OF_DETECTION, by itself, creates a new FIGURE_OF_DETECTION or raises the existing
%      singleton*.
%
%      H = FIGURE_OF_DETECTION returns the handle to a new FIGURE_OF_DETECTION or the handle to
%      the existing singleton*.
%
%      FIGURE_OF_DETECTION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FIGURE_OF_DETECTION.M with the given input arguments.
%
%      FIGURE_OF_DETECTION('Property','Value',...) creates a new FIGURE_OF_DETECTION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before figure_of_Detection_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to figure_of_Detection_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help figure_of_Detection

% Last Modified by GUIDE v2.5 20-Jun-2018 22:31:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @figure_of_Detection_OpeningFcn, ...
                   'gui_OutputFcn',  @figure_of_Detection_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before figure_of_Detection is made visible.
function figure_of_Detection_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to figure_of_Detection (see VARARGIN)

% Choose default command line output for figure_of_Detection
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes figure_of_Detection wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = figure_of_Detection_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

data = imageDatastore('gesture_sftData',...
    'IncludeSubfolders',true,...
    'LabelSource','foldernames');

ImagesTrain = shuffle(data);

% Load a pretrained AlexNet network.
net = alexnet;
layersTransfer = net.Layers(1:end-3);

% Determine the number of classes from the training data.
numClasses = numel(categories(ImagesTrain.Labels));

% Create the layer array by combining the transferred layers with the new layers.
wlrf = get(handles.edit1,'String');wlrf = str2double(wlrf);
blrf = get(handles.edit2,'String');blrf = str2double(blrf);
mbs = get(handles.edit3,'String');mbs = str2double(mbs);
me = get(handles.edit4,'String');me = str2double(me);

layers = [...
    layersTransfer
    fullyConnectedLayer(numClasses,'WeightLearnRateFactor',wlrf,'BiasLearnRateFactor',blrf)
    softmaxLayer
    classificationLayer];

options = trainingOptions('sgdm',...
    'MiniBatchSize',mbs,...
    'MaxEpochs',me,...
    'InitialLearnRate',0.0001);

% Fine-tune the network using |trainNetwork| on the new layer array.

 netTransfer = trainNetwork(ImagesTrain,layers,options);
 handles.netTransfer = netTransfer; %%%%%% transfer the Data between two buttons
 guidata(hObject,handles);



% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%% record the gesture wav
tic
%%%%%% parameter setting and single-tone audio generation
duration = 1;
nBlocks = 1;    %%%%%% change the blocks number
fs = 44100;     %%%%%% 44100
toneFreq = 18000;
nSeconds =3;
s = sin(2*pi*toneFreq*(0:1/fs:nSeconds-1/fs));  % s = sin(2*pi*toneFreq*(0:1/fs:nSeconds-1/fs));
sound(s,fs);

%%%%%% audio acquisition and analysis
Micro = audiorecorder(fs,16,2);
prune_len = 0.3;

%% training data

%%
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
     
%%   SFT with Filter
%[sig,fs]=audioread(['rec_',num2str(i),'.wav']); %**********
[sig,fs]=audioread('rl58.wav'); %**********
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

TS=0.55;
for k=1:width
    for j=1:height
       if(I_low(k,j)<TS)
            I_low(k,j)=0;
        else 
            I_low(k,j)=1;
        end
    end
end
%figure(4)
%imshow(I_low);

%%%%%% median filter
I_m = medfilt2(I_low, [3 3]);
%figure(5)
%imshow(I_m);
saveas(gcf,'imout.jpg');    

%%%%%% change the size of image
Iout = imresize(I_m,[227,227]);
Iout = repmat(Iout, 1, 1, 3);  % change to 3 channal to fix AlexNet

imwrite(Iout,['rec_',num2str(i),'.jpg']);     %%%%%%%%%%
toc
%% Transfer Learning predict
tic
ImagesTest = imageDatastore(['rec_',num2str(i),'.jpg']);

netTransfer = handles.netTransfer; %%%%%% use the data

predictedLabels = classify(netTransfer,ImagesTest);
toc
I = readimage(ImagesTest,1);
    label = predictedLabels(1);
    
    axes(handles.axes1);
    imshow(I);
    title(char(label));
end
