FROM java:8

MAINTAINER jhly101@sina.com

RUN bsdh -v 'mkdir /data'
ADD helloworld-0.0.1-SNAPSHOT.jar /data/helloworld-0.0.1-SNAPSHOT.jar
RUN bash -c 'touch /data/helloworld-0.0.1-SNAPSHOT.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/data/helloworld-0.0.1-SNAPSHOT.jar"]
