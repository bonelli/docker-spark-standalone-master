#!/usr/bin/env bash
sbin=/opt/spark-1.1.0-bin-hadoop2.4/sbin

. "$sbin/spark-config.sh"

. "$SPARK_PREFIX/bin/load-spark-env.sh"

if [ "$SPARK_MASTER_PORT" = "" ]; then
     SPARK_MASTER_PORT=7077
fi

if [ "$SPARK_MASTER_IP" = "" ]; then
     SPARK_MASTER_IP=`hostname`
fi

if [ "$SPARK_MASTER_WEBUI_PORT" = "" ]; then
     SPARK_MASTER_WEBUI_PORT=8080
fi

. "$SPARK_PREFIX/bin/load-spark-env.sh"

if [ "$SPARK_IDENT_STRING" = "" ]; then
   export SPARK_IDENT_STRING="$USER"
fi

"$SPARK_PREFIX"/bin/spark-class org.apache.spark.deploy.master.Master --ip $SPARK_MASTER_IP --port $SPARK_MASTER_PORT --webui-port $SPARK_MASTER_WEBUI_PORT
