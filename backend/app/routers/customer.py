from fastapi import APIRouter, HTTPException
from app.db.db import get_connection
from backend.app.schemas.customer import User

router = APIRouter()

@router.get("/", response_model=list[User])
def list_customers():
    customers = get_customers()
    if not customers:
        raise HTTPException(status_code=404, detail="No customers found")
    return customers

def get_customers():
    with get_connection() as conn:
        with conn.cursor() as cur:
            cur.execute("SELECT * FROM customers")
            return cur.fetchall()
