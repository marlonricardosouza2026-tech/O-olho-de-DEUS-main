@echo off
call venv\Scripts\activate
python --version
python main.py --config config.yaml
pause