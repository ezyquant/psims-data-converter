# Psims data dump

## Requirements

1. Windows (Recommended windows 10)
1. Python (Recommended Python 3.8) download from https://www.python.org/downloads/
1. PSIMS database which on Microsoft SQL Server

## How to export Ezyquant sqlite

1. Create [python virtual environments](https://docs.python.org/3/library/venv.html)
   ```
   python -m venv venv
   venv\Scripts\activate.bat
   pip install -U -r requirements.txt
   ```
1. Create file .env, example can be found in .env.example
   - DB_HOST - database url
   - DB_USER - database username
   - DB_PASSWORD - database password
   - DB_NAME - database name
1. Run program, this task will take ~1:30 hr
   ```
   python run.py
   ```
1. Once program finnish, Ezyquant sqlite can be found in export/ezyquant.db file size ~1.8 GB, export/ezyquant.zip file size ~500 MB

1. If something went wrong, log can be found in log.txt

## How to setup task scheduler

1. open task scheduler
1. On right side, choose Create Basic Task
1. Fill Name, Description
1. Choose trigger
1. Select day and time to run task
1. Choose Action **Start a program**
1. rename run.bat.example to run.bat,
   - Program - your_path\psims-db-dump\run.bat
   - Start in - your_path\psims-db-dump
1. Verify summary
