import pandas as pd
import sqlalchemy as sa
from sqlalchemy import MetaData, Table, select

from . import settings as stg
from .logger import log_wrapper, logger

# Database
engine = sa.create_engine(stg.DB_URL, connect_args={"connect_timeout": 30})
metadata = MetaData(engine)


def table_to_csv(table_name: str):
    logger.info(f"Exporting {table_name}")
    table = Table(table_name, metadata, autoload=True)

    stmt = select([table])

    if table_name in ("DAILY_STOCK_TRADE", "DAILY_STOCK_STAT"):
        security_t = Table("SECURITY", metadata, autoload=True)

        j = table.join(security_t, table.c.I_SECURITY == security_t.c.I_SECURITY)

        stmt = (
            stmt.select_from(j)
            .where(security_t.c.I_SEC_TYPE == "S")
            .where(security_t.c.I_NATIVE == "L")
        )

        if table_name == "DAILY_STOCK_TRADE":
            stmt = stmt.where(table.c.I_TRADING_METHOD == "A")

    stmt = stmt.order_by(table.c[0])

    stmt_to_csv(stmt, f"{stg.CSV_DIR_PATH}/{table_name}.csv")


def stmt_to_csv(stmt, path):
    chunks = pd.read_sql(stmt, engine, chunksize=1000000)

    df = next(chunks)  # type: ignore
    assert isinstance(df, pd.DataFrame)
    df.to_csv(
        path,
        index=False,
        date_format="%Y-%m-%d %H:%M:%S",
    )

    for df in chunks:
        assert isinstance(df, pd.DataFrame)
        df.to_csv(
            path,
            mode="a",
            index=False,
            header=False,
            date_format="%Y-%m-%d %H:%M:%S",
        )


@log_wrapper
def main():
    for i in [i for i in stg.TABLE_LIST]:
        table_to_csv(i)
