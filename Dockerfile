# --- Stage 1: Build WAR với Maven + JDK17 ---
FROM maven:3.9.8-eclipse-temurin-17 AS build
WORKDIR /app

COPY pom.xml .
RUN mvn -q -e -U -B -DskipTests dependency:go-offline

COPY src ./src
RUN mvn -q -e -B -DskipTests clean package

# --- Stage 2: Chạy với Tomcat 11 (Servlet 6.1) ---
FROM tomcat:11.0-jdk17
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR thành ROOT.war -> app chạy tại /profile
COPY --from=build /app/target/*.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]
