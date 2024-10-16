from pydantic_settings import BaseSettings

class Settings(BaseSettings):
    db_host: str = "localhost"
    db_port: int = 5432
    db_user: str = "postgres"
    db_password: str = "1234"
    db_name: str = "ecommerce"

    class Config:
        env_file = ".env"  # Permet de charger les variables d'environnement depuis un fichier .env

settings = Settings()
