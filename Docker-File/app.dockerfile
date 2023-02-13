# Use an existing Python image as the base image
FROM python:3.9-alpine

# Set the working directory
WORKDIR /app

# Copy the requirements.txt file to the container
COPY requirements.txt .

# Install the required packages
RUN pip install --no-cache-dir -r requirements.txt

# Copy the contents of the project to the container
COPY . .

# Set the default command to run when the container starts
CMD ["python", "main.py"]
