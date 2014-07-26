#!/bin/sh

export IP=`hostname -i`
export ZK_PORT_2181_TCP_ADDR="zookeeper"
sed -i -e "s/%zookeeper%/$ZK_PORT_2181_TCP_ADDR/g" $STORM_HOME/conf/storm.yaml
sed -i -e "s/%nimbus%/$IP/g" $STORM_HOME/conf/storm.yaml

supervisord
