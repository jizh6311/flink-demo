#!/bin/bash

# build maven jar file
mvn clean package -Dmaven.test.skip=true

# Run flink job
flink run -c org.example.SocketTextStreamWordCount $PWD/target/WordCount-1.0-SNAPSHOT.jar 127.0.0.1 9000
