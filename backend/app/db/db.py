import psycopg
from app.config.config import settings

# Connexion à la base de données
def get_connection():
    connection = psycopg.connect(
        host=settings.db_host,
        port=settings.db_port,
        user=settings.db_user,
        password=settings.db_password,
        dbname=settings.db_name
    )
    return connection
