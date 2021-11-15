FROM centos
COPY prometheus.yml /tmp/prometheus.yml
RUN yum -y install wget
RUN wget https://github.com/prometheus/prometheus/releases/download/v2.29.2/prometheus-2.29.2.linux-amd64.tar.gz
RUN tar -xvzf prometheus-2.29.2.linux-amd64.tar.gz
CMD ./prometheus-2.29.2.linux-amd64/prometheus --config.file=/tmp/prometheus.yml
