from pydantic import BaseModel

class Customer(BaseModel):
    id: int
    username: str
    email: str
