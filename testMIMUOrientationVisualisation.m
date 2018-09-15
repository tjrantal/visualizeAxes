fclose all;
close all;
clear all;
clc;

javaaddpath('build/libs/visualizeAxes-1.0.jar');

mimuOV = javaObject('timo.test.MIMUOrientationVisualiser',600,600,500,200);
esa = 1;

for i = 1:360
   theta = i/180*pi; 
   mimuOV.setRotationQuaternion([cos(theta/2),0,sin(theta/2),0])
   pause(1/60)
end

mimuOV.shutdown();