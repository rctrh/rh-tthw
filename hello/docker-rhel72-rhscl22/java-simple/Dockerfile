#
# Trivial Java HTTP Hello World app in a container
#
# installs JRE and JDK
# compiles class file
# specifies how to run app
FROM rhel:latest

MAINTAINER Shadow Man "shadow-man@redhat.com"

COPY . /opt/myapp

RUN yum -y install java-1.8.0-openjdk java-1.8.0-openjdk-devel && yum -y clean all

WORKDIR /opt/myapp

RUN javac hello_http.java

EXPOSE 8000
ENTRYPOINT ["java"]
CMD ["hello_http"]
