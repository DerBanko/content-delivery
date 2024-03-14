# Use an official Python runtime as a parent image
FROM python:3.12-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Set the environment variable to make Python not buffer stdout and stderr
ENV PYTHONUNBUFFERED=1

# Make port 8000 available to the world outside this container
EXPOSE 80

# Run serve.py when the container launches
CMD ["python", "./serve.py"]
