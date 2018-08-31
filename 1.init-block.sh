#!/bin/bash
# @author: konbluesky 
# @date: 2018-08-31

BLOCKCHAIN_NAME=$1

echo "BLOCKCHAIN_NAME: " $BLOCKCHAIN_NAME

if [ -z $BLOCKCHAIN_NAME ]; 
then
     BLOCKCHAIN_NAME='test'
     echo "BLOCKCHAIN_NAME set to:[${BLOCKCHAIN_NAME}]"
fi

echo "init [${BLOCKCHAIN_NAME}] data"

geth --datadir ${BLOCKCHAIN_NAME} init genesis.json

echo ${BLOCKCHAIN_NAME}>chain.lock
echo "finished!"

