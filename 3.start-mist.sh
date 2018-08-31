#!/bin/bash
# @author: konbluesky 
# @date: 2018-08-31

if [ ! -e "chain.lock" ] ;
then
    echo "chain.lock is not exists. please check file or rerun [1.init-block.sh] shell" 
    exit;
fi

DATADIR=$(cat chain.lock)
echo "DATADIR:"$DATADIR
/Applications/Mist.app/Contents/MacOS/Mist  --rpc ./${DATADIR}/geth.ipc