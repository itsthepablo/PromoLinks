@echo off
:: Script para automatizar la subida a GitHub en Windows
echo Preparando archivos...
git add .

:: Pedir mensaje de commit, si se deja vacio se usa "update"
set /p msg="Introduce el mensaje para este cambio (opcional, presiona Enter para 'update'): "
if "%msg%"=="" set msg=update

echo Creando commit con el mensaje: "%msg%"...
git commit -m "%msg%"

echo Subiendo a GitHub (rama main)...
git push origin main

echo.
echo ==============================================
echo  ¡Listo! Tus cambios ya estan en camino a Netlify.
echo ==============================================
echo.
pause
