
% An example of using ReadTIF to read a FairSIM dataset

%% Run CIRLSetup to set up the source/data paths and call ReadTIF
run("../CIRLSetup.m")
img = ReadTIF(CIRLDataPath + '/OMX_U2OS_Actin_525nm.tif', 3, 5);

%% Plot an xz-plane at the depth index of 3
[X,Y,Z,Nalp,Nphi] = size(img);
slideNo = 477;
curSlice = img(:,slideNo,:,:,:);
figure;imagesc(squeeze(curSlice(:,1,:,1,1))); axis square; colormap(gray) ;colorbar 
title('xz-plane of the raw data at y = 477')