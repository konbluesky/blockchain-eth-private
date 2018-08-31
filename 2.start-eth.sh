#!/bin/bash
# @author: konbluesky 
# @date: 2018-08-31


if [ ! -e "chain.lock" ] ;
then
    echo "chain.lock is not exists. please check file or rerun [1.init-block.sh] shell" 
    exit;
fi

DATADIR=$(cat chain.lock)
IDENTITY="TestNode1"
RPCAPI="db,eth,net,web3"
RPCADDR="127.0.0.1"
RPCPORT="8486"
PORT="30304"
NETWORKID="29399"

geth --identity $IDENTITY --datadir $DATADIR --rpc --rpcapi $RPCAPI --rpcaddr $RPCADDR --rpcport $RPCPORT --port $PORT --networkid $NETWORKID  2>>geth_$(date +%Y%m%d_%H%M%S).log &

echo "**********************************"
echo "IDENTITY:"$IDENTITY
echo "DATADIR:"$DATADIR
echo "RPCAPI:"$RPCAPI
echo "RPCADDR:"$RPCADDR
echo "RPCPOR:"$RPCPORT
echo "PORT:"$PORT
echo "NETWORKID:"$NETWORKID
echo "**********************************"

