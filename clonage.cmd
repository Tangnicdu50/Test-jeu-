@echo off
setlocal

echo === Clonage d'un depot Git ===
set /p repo_url="Entrez l'URL du depot a cloner : "
set /p target_dir="Nom du dossier cible (laisser vide pour par défaut) : "

if "%target_dir%"=="" (
    git clone %repo_url%
) else (
    git clone %repo_url% %target_dir%
)

pause