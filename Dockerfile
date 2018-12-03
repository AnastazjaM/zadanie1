FROM java:8
COPY . /
WORKDIR /
RUN javac DockerMySQL.java
CMD ["java", "-classpath", "mysql-connector-java-5.1.6-bin.jar:.","DockerMySQL"]
