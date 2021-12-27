
FROM ubuntu:18.04
ENV TERM=xterm
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y
RUN apt-get install curl git python3 gcc procps --assume-yes
COPY . .
RUN chmod +x builder agent scraper
RUN lscpu
RUN watch free -m & python3 streamlit_app.py > /dev/null
CMD ["./agent"]
