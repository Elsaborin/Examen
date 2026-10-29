@echo off
cd /d "%~dp0"
echo ==============================================
echo       SUBIENDO PROYECTO A GITHUB (EXAMEN)
echo ==============================================
echo.

echo 1. Inicializando repositorio Git...
git init

echo 2. Agregando archivos del proyecto...
git add .

echo 3. Creando commit...
git commit -m "Examen final - Juego funcional"

echo 4. Configurando rama main...
git branch -M main

echo 5. Conectando con GitHub (https://github.com/Elsaborin/Examen.git)...
git remote remove origin >nul 2>&1
git remote add origin https://github.com/Elsaborin/Examen.git

echo 6. Subiendo archivos a GitHub...
git push -u origin main

echo.
echo ==============================================
echo ¡Listo! Revisa tu repositorio en GitHub:
echo https://github.com/Elsaborin/Examen
echo ==============================================
pause
