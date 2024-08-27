FROM python:3.7
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
# Expose the port that the app will run on
# If the PORT environment variable is not set, default to 8000
ENV PORT 8000
EXPOSE $PORT

# Run the application with gunicorn
CMD gunicorn --workers=4 --bind 0.0.0.0:$PORT app:app
