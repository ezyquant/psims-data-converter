import os

from dotenv import load_dotenv

load_dotenv()  # take environment variables from .env.

# TODO: using pathlib.Path
CSV_DIR_PATH = "export"
SQLITE_PATH = "export/ezyquant.db"
SQLITE_ZIP_PATH = "export/ezyquant"
SQLITE_SCHEMAS_PATH = "export/sqlite-schemas.sql"
TABLE_LIST = [
    "ADJUST_FACTOR",
    "CALENDAR",
    "CHANGE_NAME_SECURITY",
    "COMPANY",
    "DAILY_SECTOR_INFO",
    "DAILY_STOCK_TRADE",
    "DAILY_STOCK_STAT",
    "FINANCIAL_STAT_STD",
    "FINANCIAL_SCREEN",
    "MKTSTAT_DAILY_INDEX",
    "MKTSTAT_DAILY_MARKET",
    "RIGHTS_BENEFIT",
    "SECTOR",
    "SECURITY",
    "SECURITY_DETAIL",
    "SECURITY_INDEX",
    "SIGN_POSTING",
]

# Database
DB_HOST = os.getenv("DB_HOST")
# DB_PORT = os.getenv("DB_PORT")
DB_USER = os.getenv("DB_USER")
DB_PASSWORD = os.getenv("DB_PASSWORD")
DB_NAME = os.getenv("DB_NAME")
DB_URL = f"mssql+pyodbc://{DB_USER}:{DB_PASSWORD}@{DB_HOST}/{DB_NAME}?driver=SQL+Server+Native+Client+11.0"
