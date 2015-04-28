#!/bin/bash
# 
# Author: jimin.huang
# 
# Created Time: 2015年02月04日 星期三 12时14分47秒
# 
while getopts "d" arg
do
    case $arg in 
        d)
            echo "run in detach mode"
            scrapyd &
            break
            ;;
        ?)
            echo "run in web mode"
            scrapyd
        exit 1
    esac
done
