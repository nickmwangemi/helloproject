# Pull base image
FROM python:3.7


# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1


# Set work directory
WORKDIR /helloproject


# Install dependencies
COPY Pipfile Pipfile.lock /helloproject/
RUN pip install pipenv && pipenv install --system


# Copy project
COPY . /helloproject/