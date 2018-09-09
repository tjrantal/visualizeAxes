close all;
fclose all;
clc;

rotation = [1:600]/180*pi;
tempQuatArr = single([cos(rotation/2);sin(rotation/2)*0;sin(rotation/2)*0;sin(rotation/2)*1]);
fh = fopen('quaternions.tab','wb','ieee-be');
fwrite(fh,tempQuatArr,'single');
fclose(fh);

%testVisualizeAxes = javaObject('timo.test.VisualizeAxes');%,int32(800),int32(500),quatArr);
%javaMethod('setRotationQuaternion',testVisualizeAxes,quatArr);
%javaMethod('start',testVisualizeAxes);
