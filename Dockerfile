FROM debian:latest

RUN mkdir /req
WORKDIR /req
RUN apt update && apt upgrade -y
RUN apt install git python3-pip -y
RUN git clone https://github.com/harami-boi/req
COPY . /req/
RUN pip3 install -r requirements.txt
CMD python3 bot.py
