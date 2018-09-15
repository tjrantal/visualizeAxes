set GRADLE_HOME=C:\MyTemp\softa\gradle-4.3
set JAVA_HOME=C:\Program Files\Java\jdk1.8.0_161
set PATH=%GRADLE_HOME%\bin;%JAVA_HOME%\bin;%PATH%
call gradle jar
call java -cp build\libs\visualizeAxes-1.0.jar timo.test.MIMUOrientationVisualisator 600 600
::call java -jar build\libs\visualizeAxes-1.0.jar quaternions.tab 30
::call java -jar build\libs\visualizeAxes-1.0.jar 30