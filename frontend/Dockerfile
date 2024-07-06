# Use a Python base image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the application code into the container
COPY . /app

# Install dependencies
RUN pip install -r requirements.txt

# Expose the port on which the app will run
EXPOSE 5000

# Set the Flask environment to production
ENV FLASK_ENV=production

# Use Gunicorn to run the Flask app
CMD ["gunicorn", "-b", "0.0.0.0:5000", "application:app"]

