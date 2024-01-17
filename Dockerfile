# Using an official Python runtime as a base image
FROM python:3.8

# Setting the working directory in the container
WORKDIR /app

# Copying the current directory contents into the container at /app
COPY . /app

# Installing any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Making port 5000 available to the world outside this container
EXPOSE 5000

# Defining environment variable
ENV FLASK_APP=core/server.py

# Running app.py when the container launches
CMD ["gunicorn", "-c", "gunicorn_config.py", "core.server:app"]
