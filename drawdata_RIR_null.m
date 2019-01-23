data=xlsread('run-timeforSPSS.xlsx',6,'A2:G897');
failure_rate=data(:,1);
minsdk=data(:,2);
api=data(:,3);
year=data(:,4);
api_year=data(:,5);
api_minus_year=data(:,6);
api_minus_minsdk=data(:,7);
x=api_minus_minsdk;
y=api_minus_year;
z=failure_rate;

%draw 3D scatter diagram with input data
figure;
scatter3(x,y,z);
%title name may change
title('NullPointer induced failed execution percentage distribution among different API level');
t1=xlabel('API lapse', 'FontSize',12,'FontWeight','bold','Color','m');
t2=ylabel('App lapse', 'FontSize',12,'FontWeight','bold','Color','r');
zlabel('RIR', 'FontSize',12,'FontWeight','bold','Color','black');



