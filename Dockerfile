FROM trinodb/trino

RUN curl https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-aws/3.2.0/hadoop-aws-3.2.0.jar -o /usr/lib/trino/plugin/hive/hadoop-aws-3.2.0.jar 

RUN curl https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-bundle/1.11.946/aws-java-sdk-bundle-1.11.946.jar -o /usr/lib/trino/plugin/hive/aws-java-sdk-bundle-1.11.946.jar 
