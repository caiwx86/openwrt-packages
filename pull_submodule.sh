#!/bin/bash
git clone https://github.com/kenzok8/openwrt-packages tmp/openwrt-packages
git clone https://github.com/kenzok8/small tmp/small
git rm -rf openwrt-packages small
mkdir openwrt-packages small
cp -rv tmp/openwrt-packages/* openwrt-packages
cp -rv tmp/small/* small 
git add -A openwrt-packages
git add -A small
git commit -m "update"
git push -f
