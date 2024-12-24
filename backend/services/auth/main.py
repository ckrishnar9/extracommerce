from fastapi import FastAPI
from backend.services.auth.api.v1.endpoints.auth import router as auth_router

app = FastAPI()

# Include the authentication router
app.include_router(auth_router, prefix="/api/v1/auth", tags=["auth"])
