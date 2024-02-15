FROM maven
WORKDIR /app
COPY . /app
RUN mvn clean install
CMD ["java", "-cp", "./target/simple-java-maven-app-1.0-SNAPSHOT.jar", "com.mycompany.app.App"]