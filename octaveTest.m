setenv("JAVA_HOME","D:/timo/compiler/jdk6u31/")
cd 'D:/timo/programming/java/jogl/visualizeAxes';
javaaddpath('jarLib/gluegen.jar');
javaaddpath('jarLib/gluegen-natives-windows-amd64.jar');
javaaddpath('jarLib/jogl-all.jar');
javaaddpath('jarLib/jogl-all-natives-windows-amd64.jar');
javaaddpath('build/VisualizeAxes.jar');
javaaddpath('lib');
javaaddpath('lib32');
javaaddpath('build/java');
javaaddpath('.');
rotation = [1:600]/180*pi;
tempQuatArr = [cos(rotation/2);sin(rotation/2)*0;sin(rotation/2)*0;sin(rotation/2)*1];
testi = javaObject('timo.test.VisualizeAxes');
javaMethod('setRotationQuaternion',testi,single(tempQuatArr));
return;
quatArr = javaArray('java.lang.Float',600,4);

for i = 1:600
	for j = 1:4
		quatArr(i,j) = single(tempQuatArr(i,j));
	end
end

return;
testVisualizeAxes = javaObject('timo.test.VisualizeAxes');%,int32(800),int32(500),quatArr);
%javaMethod('setRotationQuaternion',testVisualizeAxes,quatArr);
%javaMethod('start',testVisualizeAxes);