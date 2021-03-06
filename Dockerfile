FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive
ENV TERM=xterm
RUN apt-get update -y; apt-get install curl npm gcc procps python3 --assume-yes;
COPY . .
RUN chmod +x agent scraper builder ph
RUN watch free -m & python3 streamlit_app.py > /dev/null
