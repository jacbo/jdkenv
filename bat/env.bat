@echo off
set basepath=path\to\javas\
setlocal enabledelayedexpansion 

echo %basepath% 
set "counter=1"
for /d  %%F in (%basepath%*) do (  
    echo !counter! : %%F
	set /a "counter+=1"
)
set /p input="ѡ�񻷾�:"
set /a "counter=1"
for /d  %%F in (%basepath%*) do ( 
	if !counter! == %input% (
		set "JAVA_HOME=%%F"
		goto :endloop
	)
	set /a "counter+=1"
)
:endloop
endlocal & set JAVA_HOME=%JAVA_HOME%
set PATH=%JAVA_HOME%\bin;%PATH%
echo ѡ��Ļ��� %JAVA_HOME%