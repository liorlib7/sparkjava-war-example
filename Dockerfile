FROM maven:latest 
WORKDIR /usr/local/app
COPY . .
RUN mvn package

FROM tomcat:8.5.54  
WORKDIR /usr/local/tomcat
EXPOSE 8080
COPY --from=0 /usr/local/app/target/sparkjava-hello-world-1.0.war ./webapps
##ENTRYPOINT [ "/usr/local/tomcat/bin/startup.sh" ]