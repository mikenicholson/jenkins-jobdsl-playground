FROM jenkins/jenkins:2.79
COPY ./config.xml /var/jenkins_home/
COPY ./plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
