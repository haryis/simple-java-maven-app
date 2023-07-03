FROM jenkins/jenkins:2.346.1-jdk11
USER root
RUN apt-get update && apt-get install -y lsb-release
RUN curl -fsSLo /usr/share/keyrings/docker-archive-keyring.asc \
   https://download.docker.com/linux/debian/gpg
RUN echo "deb [arch=$(dpkg --print-architecture) \
   signed-by=/usr/share/keyrings/docker-archive-keyring.asc] \
   https://download.docker.com/linux/debian \
   $(lsb_release -cs) stable" > /etc/apt/sources.list.d/docker.list
RUN apt-get update && apt-get install -y docker-ce-cli
USER jenkins
<<<<<<< HEAD
ENV JENKINS_OPTS --httpPort=49000
EXPOSE 49000
=======
>>>>>>> d9e5f9ca4a4df2461cd67848d4ffe49a1fac16fc
RUN jenkins-plugin-cli --plugins "blueocean:1.25.5 docker-workflow:1.28"
