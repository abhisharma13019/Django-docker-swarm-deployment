# Use Python 3.7 as the base image
# This version is compatible with Django 3.0.x
FROM python:3.9-alpine

# Set the working directory inside the container
WORKDIR /app

COPY . /app

# Install Python dependencies
RUN pip install -r requirements.txt

# Inform Docker that the application uses port 8000
EXPOSE 8000

# Start the Django development server when the container runs
# 0.0.0.0 allows access from outside the container
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

