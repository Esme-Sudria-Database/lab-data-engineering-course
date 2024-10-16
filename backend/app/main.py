from fastapi import FastAPI
from app.routers.customer import router as customer_router

app = FastAPI()

app.include_router(customer_router, prefix="/customers", tags=["Customers"])

@app.get("/")
async def root():
    return {"message": "Hello World"}
