FROM maven
WORKDIR /app
COPY . /app
RUN mvn clean install
WORKDIR /app/target
CMD ["java", "-cp", "./my-app-1.0-SNAPSHOT.jar", "com.mycompany.app.App"]