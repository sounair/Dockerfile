FROM centos
RUN yum clean all
RUN yum -y install epel-release
RUN yum -y update
RUN yum -y install java-1.8.0-openjdk.x86_64
RUN touch /var/log/soumya.txt
RUN yum -y install wget
RUN wget http://www.scala-lang.org/files/archive/scala-2.10.1.tgz
RUN tar xvf scala-2.10.1.tgz
RUN mv scala-2.10.1 /usr/lib
RUN ln -s /usr/lib/scala-2.10.1 /usr/lib/scala
RUN export PATH=$PATH:/usr/lib/scala/bin
RUN wget https://dlcdn.apache.org/spark/spark-3.1.2/spark-3.1.2-bin-hadoop3.2.tgz
RUN tar -xvzf spark-3.1.2-bin-hadoop3.2.tgz
RUN export SPARK_HOME=$HOME/spark-3.1.2-bin-hadoop3.2.tgz
RUN export PATH=$PATH:$SPARK_HOME/bin
RUN echo 'export PATH=$PATH:/soumya/lib/scala/bin' >> .bash_profile
RUN echo 'export SPARK_HOME=$HOME/spark-3.1.2-bin-hadoop3.2.tgz' >> .bash_profile
RUN echo 'export PATH=$PATH:$SPARK_HOME/bin' >> .bash_profile
RUN echo "tail -f /var/log/soumya.txt" >> /spark-3.1.2-bin-hadoop3.2/sbin/start-master.sh
CMD ./spark-3.1.2-bin-hadoop3.2/sbin/start-master.sh                                                   
