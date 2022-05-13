FROM trinodb/trino:380

ARG HADOOP_VERSION=3.3.1
ARG AWS_SDK_VERSION=1.12.172

RUN curl https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-aws/${HADOOP_VERSION}/hadoop-aws-${HADOOP_VERSION}.jar -o /usr/lib/trino/plugin/hive/hadoop-aws-${HADOOP_VERSION}.jar 

RUN curl https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-bundle/${AWS_SDK_VERSION}/aws-java-sdk-bundle-${AWS_SDK_VERSION}.jar -o /usr/lib/trino/plugin/hive/aws-java-sdk-bundle-${AWS_SDK_VERSION}.jar 
