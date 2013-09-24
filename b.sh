hadoop jar target/hbase-streaming-0.0.1.jar \
	-D hbase.zookeeper.quorum=ip-10-132-134-61.ap-northeast-1.compute.internal:2181 \
	-D hbase.cluster.distributed=true \
	-D hbase.rootdir=hdfs://ip-10-132-128-216.ap-northeast-1.compute.internal:8020/hbase \
	-mapper python map.py \
	-reducer python reducer.py \
	-input dummy_input \
	-output dummy_output \
