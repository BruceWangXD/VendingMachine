@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  VendingMachine startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Add default JVM options here. You can also use JAVA_OPTS and VENDING_MACHINE_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windows variants

if not "%OS%" == "Windows_NT" goto win9xME_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\VendingMachine-1.0-SNAPSHOT.jar;%APP_HOME%\lib\json-lib-2.4-jdk15.jar;%APP_HOME%\lib\mybatis-3.5.5.jar;%APP_HOME%\lib\mysql-connector-java-8.0.21.jar;%APP_HOME%\lib\fastjson-1.2.74.jar;%APP_HOME%\lib\mybatis-generator-core-1.4.0.jar;%APP_HOME%\lib\testng-6.9.6.jar;%APP_HOME%\lib\javafx-media-15-mac.jar;%APP_HOME%\lib\javafx-fxml-15-mac.jar;%APP_HOME%\lib\javafx-controls-15-mac.jar;%APP_HOME%\lib\javafx-controls-15.jar;%APP_HOME%\lib\javafx-graphics-15-mac.jar;%APP_HOME%\lib\javafx-graphics-15.jar;%APP_HOME%\lib\javafx-base-15-mac.jar;%APP_HOME%\lib\javafx-base-15.jar;%APP_HOME%\lib\commons-beanutils-1.8.0.jar;%APP_HOME%\lib\commons-collections-3.2.1.jar;%APP_HOME%\lib\ezmorph-1.0.6.jar;%APP_HOME%\lib\commons-lang-2.5.jar;%APP_HOME%\lib\commons-logging-1.1.1.jar;%APP_HOME%\lib\protobuf-java-3.11.4.jar;%APP_HOME%\lib\guice-4.0-no_aop.jar;%APP_HOME%\lib\bsh-2.0b4.jar;%APP_HOME%\lib\ant-1.7.0.jar;%APP_HOME%\lib\jcommander-1.48.jar;%APP_HOME%\lib\snakeyaml-1.15.jar;%APP_HOME%\lib\junit-4.10.jar;%APP_HOME%\lib\javax.inject-1.jar;%APP_HOME%\lib\aopalliance-1.0.jar;%APP_HOME%\lib\guava-16.0.1.jar;%APP_HOME%\lib\ant-launcher-1.7.0.jar;%APP_HOME%\lib\hamcrest-core-1.1.jar

@rem Execute VendingMachine
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %VENDING_MACHINE_OPTS%  -classpath "%CLASSPATH%" Application.Main %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable VENDING_MACHINE_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%VENDING_MACHINE_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
