@echo off
echo Vérification de l'installation de Git...
where git >nul 2>&1

if %errorlevel%==0 (
    echo Git est déjà installé sur votre système.
    git --version
) else (
    echo Git n'est pas installé.
    echo Ouverture du site officiel pour téléchargement...
    start https://git-scm.com/download/win
)

pause