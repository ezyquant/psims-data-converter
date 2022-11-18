from src import csv_to_sqlite, mssql_to_csv, sqlite_create_script, zip_sqlite

if __name__ == "__main__":
    sqlite_create_script.main()
    mssql_to_csv.main()
    csv_to_sqlite.main()
    zip_sqlite.main()
