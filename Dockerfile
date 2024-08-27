FROM python:3.7
# FROM tiangolo/uvicorn-gunicorn-fastapi:python3.9

COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE $PORT
CMD gunicorn --workers=4 --bind 0.0.0.0:$PORT app:app
