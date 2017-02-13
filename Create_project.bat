@Echo OFF
Title Creation du projet Phalcon
setlocal enabledelayedexpansion
SET projet=

SET /p projet=Nom du projet : 
cmd /c phalcon create-project %projet%
echo Aller changer le dbname dans le fichier /%projet%/app/config/config.php
echo Ensuite fermez le fichier
cmd /c call "%projet%/app/config/config.php"
pushd %projet%
SET nbclass=
SET /p nbclass="Combien de class a inserer ?"
SET nom=
for /l %%v in (1, 1, %nbclass%) do (
SET /p nom="nom de la classe :"
echo ------------------!nom!
cmd /c phalcon create-controller !nom!
cmd /c phalcon create-model !nom! --get-set
cmd /c phalcon scaffold --table-name !nom!
)
endlocal
pause