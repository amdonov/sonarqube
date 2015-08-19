FROM debian:jessie
RUN apt-get update && apt-get install -y curl unzip default-jre
RUN curl -k -o sonar.zip -L https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-5.1.2.zip && unzip sonar && chmod -R 777 /sonarqube-5.1.2/logs /sonarqube-5.1.2/bin/linux-x86-64 /sonarqube-5.1.2/temp /sonarqube-5.1.2/data /sonarqube-5.1.2/bin/linux-x86-64/extensions && rm sonar.zip
EXPOSE 9000
CMD /sonarqube-5.1.2/bin/linux-x86-64 -console
