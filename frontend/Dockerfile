# Use an official Python runtime as a parent image
FROM python:3.9

# Set the working directory in the container
WORKDIR /frontendapp

# Copy the requirements file into the container at /frontendapp
COPY requirements.txt /frontendapp/requirements.txt

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container at /frontendapp
COPY . /frontendapp

# Run run.py when the container launches
ENTRYPOINT ["python"]
CMD ["run.py"]

