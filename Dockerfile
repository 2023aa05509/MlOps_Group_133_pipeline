# Use a lightweight Python base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file (to install dependencies)
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the project files into the container
COPY . .

# Expose the port if you are running an API (optional)
EXPOSE 5000

# Define the default command to run your script
CMD ["python", "model.py"]
