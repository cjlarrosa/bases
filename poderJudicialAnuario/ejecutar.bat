@echo off
For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set mydate=%%c-%%a-%%b)
For /f "tokens=1-2 delims=/:" %%a in ('time /t') do (set mytime=%%a%%b)
echo %mydate%_%mytime%


set /p pdiDirectorio=<%~dp0config\pdiConfig.txt 
echo "Directorio donde esta instalado PDI: %pdiDirectorio%"
%pdiDirectorio%kitchen.bat /file:%~dp0/00-llamadoP.kjb /level:Basic > %~dp0log\logPdi-%mydate%-%mytime%.txt

