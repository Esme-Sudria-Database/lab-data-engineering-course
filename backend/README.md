# FastAPI Backend

This is the backend service for our project, built using FastAPI.

## Prerequisites

- Python 3.13+
- Poetry

## Installation

1. Clone the repository:
   ```
   git clone <repository-url>
   cd <project-directory>/backend
   ```

2. Install dependencies using Poetry:
   ```
   poetry install
   ```

## Running the Application

To run the application locally:

1. Activate the Poetry environment (aka virtual env):
   ```
   poetry shell
   ```

2. Start the FastAPI server:
   ```
   fastapi dev
   ```

The API will be available at `http://localhost:8000`.

## API Documentation

Once the server is running, you can access the automatic interactive API documentation:

- Swagger UI: `http://localhost:8000/docs`
- ReDoc: `http://localhost:8000/redoc`

