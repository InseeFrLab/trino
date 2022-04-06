# trino
Docker image for trino in order to add org.apache.hadoop.fs.s3a.TemporaryAWSCredentialsProvider support

# on update version

need to check version library of java-sdk in /lib/trino/plugin/hive or in the pom of trino tag version for example here https://github.com/trinodb/trino/blob/374/pom.xml#L54
