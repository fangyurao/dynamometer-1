# Prepend/Append plugin parcel classpaths

if [ "$HADOOP_USER_CLASSPATH_FIRST" = 'true' ]; then
  # HADOOP_CLASSPATH={{HADOOP_CLASSPATH_APPEND}}
  :
else
  # HADOOP_CLASSPATH={{HADOOP_CLASSPATH}}
  :
fi
# JAVA_LIBRARY_PATH={{JAVA_LIBRARY_PATH}}

export HADOOP_MAPRED_HOME=$( ([[ ! '/opt/cloudera/parcels/CDH/lib/hadoop-mapreduce' =~ CDH_MR2_HOME ]] && echo /opt/cloudera/parcels/CDH/lib/hadoop-mapreduce ) || echo ${CDH_MR2_HOME:-/usr/lib/hadoop-mapreduce/}  )
export YARN_OPTS="-Xmx825955249 -Djava.net.preferIPv4Stack=true $YARN_OPTS"
export HADOOP_CLIENT_OPTS="-Djava.net.preferIPv4Stack=true $HADOOP_CLIENT_OPTS"

#the following statement is added by FY, this setting is important
export HADOOP_HEAPSIZE="51200"
export HADOOP_OPTS="-XX:+HeapDumpOnOutOfMemoryError"
export HADOOP_DATANODE_OPTS="-Xmx20m"

#echo "added by FYR on 2018/08/17 10am"
