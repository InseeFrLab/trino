# trino
Docker image for trino in order to add org.apache.hadoop.fs.s3a.TemporaryAWSCredentialsProvider support

# on update version
- for the hadoop-aws-*.jar try to be close compliant to the hive-metastore image version.
- for the java-sdk-aws follow the trino tag version for example here https://github.com/trinodb/trino/blob/374/pom.xml#L54 and could be double check with the version in the coordinator in ls /lib/trino/plugin/hive | grep sdk
