FROM ubuntu:latest

# update packages and install necessary dependencies
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip

# copy files to container
COPY . /app
WORKDIR /app

# install Python packages
RUN pip3 install -r requirements.txt

# set environment variables
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_RUN_PORT=5000

# set entrypoint
ENTRYPOINT ["flask", "run"]

# set command
CMD ["--host=0.0.0.0", "--port=5000"]
