# Word Count Demo
A [Java Flink project](https://mvnrepository.com/artifact/org.apache.flink/flink-quickstart-java/1.11.1) as a quick start

## Project Setup
1. Install Maven by `brew install maven`
2. Start Flink by the scripts on the root directory
3. Listen to port 9090 by `nc -l 9000`
4. Build Maven project and run it under `127.0.0.1:9000` by
```
./start-word-count.sh
```
5. You will see 'Word Count' project on the Flink Web Dashboard
