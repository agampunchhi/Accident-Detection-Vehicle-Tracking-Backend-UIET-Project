FROM ubuntu:latest

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends wget curl python3 python3-pip build-essential
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash
RUN apt install -y nodejs
COPY . . 

RUN npm i -g localtunnel
RUN pip3 install -r requirements.txt

CMD python3 main.py & lt --port 5000 --subdomain gpsvehicleuiet
