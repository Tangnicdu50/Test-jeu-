@echo off
setlocal

echo === Git Add + Commit + Push ===
set /p commit_msg="Entrez le message du commit : "
set /p branch="Nom de la branche (laisser vide pour 'main') : "

if "%branch%"=="" (
    set branch=main
)

echo.
echo  Ajout des fichiers...
git add .

echo.
echo  Commit en cours...
git commit -m "%commit_msg%"

echo.
echo  Envoi vers la branche '%branch%'...
git push origin %branch%

echo.
echo  Terminer !
pause
