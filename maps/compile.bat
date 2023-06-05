@echo off

cd %~dp0

del final.pts

echo --------------QBSP--------------
\quake_bin\treb\quake-leveldesign-starterkit\tools\ericw-tools\bin\qbsp.exe -verbose final -notranswater 

echo --------------VIS---------------
\quake_bin\treb\quake-leveldesign-starterkit\tools\ericw-tools\bin\vis.exe final

echo -------------LIGHT--------------
rem -dirtdebug -dirtdepth 512 
rem  -bounce -bouncescale 0.5 -soft -extra4
\quake_bin\treb\quake-leveldesign-starterkit\tools\ericw-tools\bin\light.exe -bounce -bouncescale 0.5 -extra4 final 

