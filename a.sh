export CLASSPATH=$CLASSPATH:`hbase classpath`
hadoop jar /usr/lib/hadoop-0.20-mapreduce/contrib/streaming/hadoop-streaming-2.0.0-mr1-cdh4.3.0.jar \
-D map.input.table=visit \
-D map.input.columns=details \
-D map.input.timestamp=1 \
-D map.input.binary=0 \
-D reduce.output.table=counter \
-D mapred.reducer.new-api=false \
-D mapred.mapper.new-api=false \
-D hbase.zookeeper.quorum=ip-10-132-134-61.ap-northeast-1.compute.internal:2181 \
-D hbase.cluster.distributed=true \
-D hbase.rootdir=hdfs://ip-10-132-128-216.ap-northeast-1.compute.internal:8020/hbase \
-files map.py,reduce.py   \
-libjars build/hadoop-hbase-streaming.jar,/usr/lib/hbase/hbase-0.94.6-cdh4.3.0-security.jar \
-input dummy_input \
-inputformat org.childtv.hadoop.hbase.mapred.JSONTableInputFormat \
-output dummy_output \ 
-outputformat org.childtv.hadoop.hbase.mapred.ListTableOutputFormat \
-mapper map.py \
-reducer reduce.py

#-libjars build/hadoop-hbase-streaming.jar,/usr/lib/hbase/hbase-0.94.6-cdh4.3.0-security.jar \
