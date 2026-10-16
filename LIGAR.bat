@echo off
cd /d C:\Users\MARLON\Desktop\O-olho-de-DEUS-main
call venv\Scripts\activate.bat
python main.py --mode api --config config.yaml
pause