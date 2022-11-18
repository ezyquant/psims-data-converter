import os

import sqlalchemy as sa
from sqlalchemy import MetaData, Table, update
from sqlalchemy.exc import IntegrityError

from . import settings as stg
from .logger import log_wrapper, logger

SQLITE3 = "bin" + os.sep + "sqlite3"

engine = sa.create_engine(f"sqlite:///{stg.SQLITE_PATH}")
metadata = MetaData(engine)


def init_sqlite(path: str):
    logger.info(f"Initializing {path}")
    if os.path.isfile(path):
        os.remove(path)

    is_not_success = os.system(f"{SQLITE3} {path} < {stg.SQLITE_SCHEMAS_PATH}")
    if is_not_success:
        raise Exception("Failed to initialize sqlite")


def import_csv(sqlite_path: str, csv_path: str, table_name: str):
    logger.info(f"Importing {table_name}")
    is_not_success = os.system(
        f'{SQLITE3} -csv {sqlite_path} ".import --skip 1 {csv_path} {table_name}"'
    )
    if is_not_success:
        raise Exception("Failed to import csv")

    table = Table(table_name, metadata, autoload=True)

    for i in table.c:
        stmt = update(table).where(i == "").values(**{i.name: None})
        try:
            engine.execute(stmt)
        except IntegrityError as e:
            assert "NOT NULL" in str(e)


@log_wrapper
def main():
    init_sqlite(stg.SQLITE_PATH)

    for i in stg.TABLE_LIST:
        import_csv(
            sqlite_path=stg.SQLITE_PATH,
            csv_path=f"{stg.CSV_DIR_PATH}/{i}.csv",
            table_name=i,
        )
