FROM java:8-jdk
RUN wget -q http://www.apache.org/dyn/closer.cgi/spark/spark-1.1.0/spark-1.1.0-bin-hadoop2.4.tgz -O /opt/spark-1.1.0-bin-hadoop2.4.tgz
RUN tar xf /opt/spark-1.1.0-bin-hadoop2.4.tgz -C /opt/spark-1.1.0-bin-hadoop2.4
