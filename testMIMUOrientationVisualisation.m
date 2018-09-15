fclose all;
close all;
clear all;
clc;

javaaddpath('build/libs/visualizeAxes-1.0.jar');

mimuOV = javaObject('timo.test.MIMUOrientationVisualiser',300,300,0,0);
mimuOV2 = javaObject('timo.test.MIMUOrientationVisualiser',300,300,300,0);
esa = 1;

for i = 1:360
   theta = i/180*pi; 
   mimuOV.setRotationQuaternion([cos(theta/2),0,sin(theta/2),0]);
   mimuOV2.setRotationQuaternion([cos(theta/2),0,0,sin(theta/2)]);
   pause(1/60);
end

%mimuOV.shutdown();
