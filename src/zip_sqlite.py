import shutil
from pathlib import Path

from .settings import SQLITE_PATH, SQLITE_ZIP_PATH


def make_zip(out_filename: str, in_dirname: str, in_filename: str):
    shutil.make_archive(
        base_name=out_filename, format="zip", root_dir=in_dirname, base_dir=in_filename
    )


def main():
    sqlite_path = Path(SQLITE_PATH)
    make_zip(
        out_filename=SQLITE_ZIP_PATH,
        in_dirname=str(sqlite_path.parent),
        in_filename=sqlite_path.name,
    )


if __name__ == "__main__":
    main()
