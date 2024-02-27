FROM trinodb/trino:439

ARG HADOOP_VERSION=3.3.5
ARG AWS_SDK_VERSION=1.12.657

RUN curl https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-aws/${HADOOP_VERSION}/hadoop-aws-${HADOOP_VERSION}.jar -o /usr/lib/trino/plugin/hive/hdfs/hadoop-aws-${HADOOP_VERSION}.jar 

RUN curl https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-bundle/${AWS_SDK_VERSION}/aws-java-sdk-bundle-${AWS_SDK_VERSION}.jar -o /usr/lib/trino/plugin/hive/hdfs/aws-java-sdk-bundle-${AWS_SDK_VERSION}.jar 
RUN rm -rf /usr/lib/trino/plugin/hive/hdfs/aws-java-sdk-core-1.12.657.jar aws-java-sdk-kms-1.12.657.jar aws-java-sdk-s3-1.12.657.jar aws-java-sdk-sts-1.12.657.jar
