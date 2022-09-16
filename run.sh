#!/bin/sh

cd src
export APP_MODULE="openapi_server.main:app"
export HOST=${HOST:-0.0.0.0}
export PORT=${PORT:-8080}

exec uvicorn --reload --host $HOST --port $PORT "$APP_MODULE"