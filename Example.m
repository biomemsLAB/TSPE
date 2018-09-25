tic
%% Example script for the usage of TSPE
% clear workspace and load SpikeTrain
clear 
load('ExampleSpikeTrain.mat')
% Simulation up to 1 hour
Recordingdur_ms=60*1000*30; % Recording duration for connectivity estimation
Plotdur_ms=10*1000; % Duration for raster plot

%% Shortening the data to Recordingduration_ms
for el=1:data.NumEL_rec
    data.asdf{el}=data.asdf{el}(data.asdf{el} < Recordingdur_ms);
end
data.asdf{data.NumEL_rec+2}=[data.NumEL_rec, Recordingdur_ms]; 
% last cell contains information of the number of recorded neurons and 
% the recording duration
 
%% Raster plot 
vec1=[];
vec2=[];
for el=1:data.NumEL_rec
    vec1=[vec1 data.asdf{el}(data.asdf{el} < Plotdur_ms)];
    vec2=[vec2 el*ones(1,length(data.asdf{el}(data.asdf{el} < Plotdur_ms)))];
end
figure
plot(vec1/ data.SaRa_Hz,vec2,'.k')
hold on
xlabel('Time in s')
ylabel('Index of neuron')
title('SpikeTrains of simulation')
set(gcf, 'Position', [50 50 1200 500]);

%% Applying TSPE
[ConnectivityMatrix, Delaymatrix_ms]=TSPE(data.asdf);

% neglect self-connections
ConnectivityMatrix(1==(diag(ones(1,data.NumEL_rec))))=0; 


%% Comparison between estimated CM and used SWM 
figure
subplot(1,2,1)
imagesc(ConnectivityMatrix)
title('Estimated connectivity')
subplot(1,2,2)
imagesc(data.SWM)
title('Used connectivity for simulation')
set(gcf, 'Position', [50 50 1200 500]); toc