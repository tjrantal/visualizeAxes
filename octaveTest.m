close all;
fclose all;
clc;

fps = 30;
t = ([1:10*fps]-1)/fps;
rotation = 2*pi*t;
tempQuatArr = double([cos(rotation/2);sin(rotation/2)*0;sin(rotation/2)*0;sin(rotation/2)*1]');
size(tempQuatArr)
%keyboard;
fh = fopen('quaternions.tab','wb','ieee-be');
fwrite(fh,tempQuatArr,'double');
fclose(fh);

%testVisualizeAxes = javaObject('timo.test.VisualizeAxes');%,int32(800),int32(500),quatArr);
%javaMethod('setRotationQuaternion',testVisualizeAxes,quatArr);
%javaMethod('start',testVisualizeAxes);
