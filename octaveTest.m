%setenv("JAVA_HOME","D:/timo/compiler/jdk6u31/")
cd 'D:/timo/programming/java/jogl/visualizeAxes';
if 0
	javaaddpath('jarLib/gluegen.jar');
	javaaddpath('jarLib/gluegen-natives-windows-amd64.jar');
	javaaddpath('jarLib/jogl-all.jar');
	javaaddpath('jarLib/jogl-all-natives-windows-amd64.jar');
	javaaddpath('build/VisualizeAxes.jar');
	javaaddpath('lib');
	javaaddpath('lib32');
	javaaddpath('build/java');
	javaaddpath('.');
end
rotation = [1:600]/180*pi;
tempQuatArr = single([cos(rotation/2);sin(rotation/2)*0;sin(rotation/2)*0;sin(rotation/2)*1]);
fh = fopen('quaternions.tab','wb','ieee-be');
fwrite(fh,tempQuatArr,'single');
fclose(fh);

%testVisualizeAxes = javaObject('timo.test.VisualizeAxes');%,int32(800),int32(500),quatArr);
%javaMethod('setRotationQuaternion',testVisualizeAxes,quatArr);
%javaMethod('start',testVisualizeAxes);