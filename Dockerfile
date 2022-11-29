FROM debian:latest

RUN apt update && apt upgrade -y
RUN apt install git python3-pip -y
WORKDIR /reqbot
RUN git clone https://github.com/harami-boi/req
RUN pip3 install -r requirements.txt
CMD python3 bot.py
