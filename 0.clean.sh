#!/bin/bash
# @author: konbluesky 
# @date: 2018-08-31

DATADIR=$(cat chain.lock)

rm -rf $DATADIR/

rm -rf *.log

rm -rf chain.lock
