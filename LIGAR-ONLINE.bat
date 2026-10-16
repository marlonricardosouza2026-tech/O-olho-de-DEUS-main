@echo off
title LIGAR ONLINE - Olho de Deus
cd /d C:\Users\MARLON\Desktop\O-olho-de-DEUS-main

echo ==============================================
echo  OLHO DE DEUS - MODO ONLINE
echo ==============================================
echo  1 - Ligando API na porta 8000...
echo  2 - Criando link publico na internet...
echo ==============================================

REM Liga a API em uma janela separada
start "1 - API Olho de Deus - NAO FECHE" cmd /k "call venv\Scripts\activate.bat && echo API INICIANDO... && python main.py --mode api --config config.yaml"

echo Aguardando 8 segundos pra API subir...
timeout /t 8 /nobreak >nul

echo Ligando tunel online...
REM Liga o tunel em outra janela
start "2 - LINK ONLINE - COPIE ESSE LINK" cmd /k "echo Criando seu link publico... && echo Se pedir pra instalar, digite S e de ENTER && npx localtunnel --port 8000"

echo.
echo ==============================================
echo  TUDO LIGADO!
echo ==============================================
echo  1 - Janela 'API' deve estar em: Uvicorn running...
echo  2 - Janela 'LINK ONLINE' vai mostrar seu link https://
echo  Copie o link https://xxxx.loca.lt e abre no celular!
echo ==============================================
echo  Deixe as 2 janelas pretas ABERTAS!
echo ==============================================
pause
