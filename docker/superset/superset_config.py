import logging
import os


logger = logging.getLogger()

HTTP_HEADERS = {'X-Frame-Options': 'ALLOWALL'}
SESSION_COOKIE_HTTPONLY = False
SESSION_COOKIE_SECURE = False
SESSION_COOKIE_SAMESITE = None
WTF_CSRF_ENABLED = False

try:
    from superset_config import *  # noqa
    import superset_config

    logger.info(
        f"Loaded your Docker configuration at " f"[{superset_config.__file__}]"
    )
except ImportError:
    logger.info("Using default Docker config...")