%load 'preinterictal.mat';
fs=128; % 256 simples per second
%sample= Lengthdata/fs; % nb of total seconds
window= 1; % 5 sec equal to 1280 simples 
%  Length_interictal=length(CHB_datasub.interictal); 
%  for i=1:Length_interictal
%      Lengthdata=length(CHB_datasub.interictal{1,i}.data); 
%      segment=Lengthdata/window;
%       for j=1:window
%           interictal{j+(window*(i-1)),1}= CHB_datasub.interictal{1,i}.data(1:18,segment*(j-1)+1:segment*j);
%       end
%  end
% segmentation 5s interictal
%load 'preinterictal.mat';
Length_data=length(Regim_datasub.trial);
newlength=0;
for i=1:Length_data
    Lengthdata=length(Regim_datasub.trial{i,1});  
    segment=window*fs;
    %nb=Lengthdata/segment;
     nb=floor(Lengthdata/segment);
   % start=length(datasub15.interictal);
     for j=1:nb
         DASPS_datasub.trial{j+newlength,1}= Regim_datasub.trial{i,1}(1:14,segment*(j-1)+1:segment*j);
     end
     newlength=length(DASPS_datasub.trial);
     DASPS_datasub.labels=Regim_datasub.label;
end


