# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /frontendapp

# Copy the requirements file into the container at /frontendapp
COPY requirements.txt /frontendapp/requirements.txt

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container at /frontendapp
COPY . /frontendapp

# Set environment variables for Flask
ENV FLASK_APP=run.py
ENV FLASK_RUN_HOST=0.0.0.0

# Expose the port on which the app will run
EXPOSE 5000

# Run run.py when the container launches
ENTRYPOINT ["python"]
CMD ["run.py"]
