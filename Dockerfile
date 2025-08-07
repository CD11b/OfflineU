# set base image (host OS)
FROM python:3.13.5-slim-bookworm

# set the working directory in the container
WORKDIR /app

# copy the dependencies file to the working directory
COPY requirements.txt .

# set environmental variables

# install dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# copy the content of the local src directory to the working directory
COPY . .

EXPOSE 5000

# command to run on container start
CMD [ "python", "/app/offlineu_core.py" ] 