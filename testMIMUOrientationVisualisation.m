fclose all;
close all;
clear all;
clc;

javaaddpath('build/libs/visualizeAxes-1.0.jar');
mimuOV = struct();
widthSize = 600;
for i = 1:3
	mimuOV(i).obj = javaObject('timo.test.MIMUOrientationVisualiser',widthSize,widthSize,widthSize*(i-1),0);
end

for i = 1:1080
   theta = i/180*pi; 
   mimuOV(1).obj.setRotationQuaternion([cos(theta/2),sin(theta/2),0,0]);
   mimuOV(2).obj.setRotationQuaternion([cos(theta/2),0,sin(theta/2),0]);
   mimuOV(3).obj.setRotationQuaternion([cos(theta/2),0,0,sin(theta/2)]);
   pause(1/60);
end

%mimuOV.shutdown();
