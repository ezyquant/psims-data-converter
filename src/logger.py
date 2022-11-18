import logging
import traceback
from functools import wraps
from logging import FileHandler, Formatter

LOG_PATH = "log.txt"

handler = FileHandler(filename=LOG_PATH)

logging.basicConfig()

logger = logging.getLogger("psims-db-dump")
logger.setLevel(logging.INFO)
logger.addHandler(handler)

formatter = Formatter(
    f"%(asctime)s - %(levelname)s - %(message)s",
    "%Y-%m-%d %H:%M:%S",
)
for i in logger.handlers:
    handler.setFormatter(formatter)


def log_wrapper(func):
    @wraps(func)
    def wrapped(*args, **kwargs):
        try:
            return func(*args, **kwargs)
        except:
            logger.error(traceback.format_exc())
            raise

    return wrapped
