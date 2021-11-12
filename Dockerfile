FROM centos
COPY config /tmp/config
RUN apt-get install wget
RUN wget https://github.com/prometheus/prometheus/releases/download/v2.29.2/prometheus-2.29.2.linux-amd64.tar.gz
RUN tar -xvzf prometheus-2.29.2.linux-amd64.tar.gz
ADD /tmp/config
CMD ./prometheus-2.29.2.linux-amd64/prometheu
