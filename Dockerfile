# Use official Python image (lightweight)
FROM python:3.12-slim

# Set working directory inside container
WORKDIR /app

# Copy requirements and install Flask
COPY requirements.txt .
RUN python -m pip install --no-cache-dir -r requirements.txt

# Copy the app code
COPY app.py .

# Expose Flask port
EXPOSE 5000

# Command to run the app
CMD ["python", "app.py"]

