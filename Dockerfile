# Use the official python image from the Docker hub
FROM python:3.9-slim

# Set the Workig directory
WORKDIR /app

# Copy requirements file and install dependencies
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# COPY the rest of the application code
COPY . .

# Define the command to run the application
CMD ["python", "app.py"]
