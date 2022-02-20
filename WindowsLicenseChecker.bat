@echo off
:inicio
cls
echo.
echo --------------------------------------------------
echo - Comprobador de estado de activacion de Windows -
echo --------------------------------------------------
echo.
echo 1 - Verificacion de estado de licencia
echo 2 - Informacion sobre licencia
echo 3 - Salir
echo.
set /P M=Marca la seleccion:
if %M%==1 goto estadoactivacion
if %M%==2 goto infolicencia
if %M%==3 goto salir
:estadoactivacion
cls
echo Con este comando podras verificar si tu licencia de Windows es original
echo Licencia permanente: LICENCIA ORIGINAL
echo Licencia con fecha: LICENCIA FALSA
pause
slmgr /xpr
goto inicio
:infolicencia
cls
echo.
echo ---------------------------------------------
echo - Que tipo de informacion quieres obtener? -
echo ---------------------------------------------
echo.
echo 1 - Informacion basica
echo 2 - Informacion detallada
echo 3 - Volver atras
set /P M=Marca la seleccion:
if %M%==1 goto informacionbasica
if %M%==2 goto informaciondetallada
if %M%==3 goto volver
:informacionbasica
slmgr /dli
goto inicio
:informaciondetallada
slmgr /dlv
goto inicio
:volver
goto inicio
:salir
cls
echo ---------------------------------
echo - Gracias por usar el programa! -
echo ---------------------------------
pause