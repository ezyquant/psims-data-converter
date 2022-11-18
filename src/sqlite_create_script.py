import sqlalchemy as sa
from sqlalchemy import Column, MetaData, Table
from sqlalchemy.schema import CreateTable
from sqlalchemy.sql.sqltypes import (
    INTEGER,
    REAL,
    TEXT,
    Date,
    DateTime,
    Integer,
    Numeric,
    String,
    Time,
    TypeEngine,
)

from . import settings as stg


def to_sqlite_type(type_) -> TypeEngine:
    if isinstance(type_, Integer):
        return INTEGER()
    elif isinstance(type_, Numeric):
        return REAL()
    elif isinstance(type_, (String, DateTime, Date, Time)):
        return TEXT()
    else:
        raise NotImplementedError(f"{type_} is not implemented")


def to_sqlite_table(table):
    columns_list = [Column(i.name, type_=to_sqlite_type(i.type)) for i in table.columns]
    return Table(table.name, MetaData(), *columns_list)


def main():
    engine = sa.create_engine(stg.DB_URL)
    metadata = MetaData(engine)
    metadata.reflect(only=stg.TABLE_LIST)

    sqlite_schemas = "".join(
        f"{str(CreateTable(to_sqlite_table(i))).strip()};\n"
        for i in metadata.tables.values()
    )

    with open(stg.SQLITE_SCHEMAS_PATH, "w") as f:
        f.write(sqlite_schemas)
