Length_data=length(Regim_datasub.trial);
for j=1:Length_data
for i=1:15
    DASPS_datasub.Labels{i+15*(j-1),1}=Regim_datasub.label{j,1}(1);
    DASPS_datasub.Labels{i+15*(j-1),2}=Regim_datasub.label{j,1}(2);
end
end