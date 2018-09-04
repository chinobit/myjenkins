FROM jenkins/jenkins:latest
#ARG httpPort
#ARG httpsPort
#ARG httpsCertificate
#ARG httpsPrivatKey

# if we want to install via apt
USER root
RUN apt-get update && apt-get install -y
# drop back to the regular jenkins user - good practice
#COPY /etc/letsencrypt/archive/fedora.shavitglobal.com/fullchain1.pem /var/lib/jenkins/fullchain1.pem
#COPY /etc/letsencrypt/archive/fedora.shavitglobal.com/privkey1.pem /var/lib/jenkins/privkey1.pem
USER jenkins
#ENV JAVA_OPTS -Dhudson.footerURL=http://fedora.shavitglobal.com --httpPort=$httpPort --httpsPort=$httpsPort --httpsCertificate=$httpsCertificate  --httpsPrivateKey=$httpsPrivatKey
ENV JAVA_OPTS -Dhudson.footerURL=http://fedora.shavitglobal.com
#EXPOSE 8083
EXPOSE 8080

