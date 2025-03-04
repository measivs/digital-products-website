# Use an official Python runtime as a parent image
FROM python:3.12

# Set the working directory in the container
WORKDIR /app

# Copy only requirements first (to leverage Docker cache)
COPY requirements.txt /app/

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Now copy the rest of the project files
COPY . /app/

# Make port 8000 available
EXPOSE 8000

# Define environment variable
ENV PYTHONUNBUFFERED 1

# Run Django's runserver (the CMD can be overwritten)
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
