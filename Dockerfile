FROM maven:latest 
WORKDIR /usr/local/app
COPY . .
RUN mvn package

FROM tomcat:8  
WORKDIR /usr/local/tomcat
COPY --from=0 /usr/local/app/target/sparkjava-hello-world-1.0.war ./webapps
