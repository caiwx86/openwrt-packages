#!/bin/bash
git clone https://github.com/kenzok8/openwrt-packages tmp/openwrt-packages
git clone https://github.com/kenzok8/small tmp/small
https://github.com/kenzok8/small-package tmp/small-package
git rm -rf openwrt-packages small small-package
mkdir openwrt-packages small small-package
cp -r tmp/openwrt-packages/* openwrt-packages
cp -r tmp/small/* small 
cp -r tmp/small-package/* small-package 
git add -A openwrt-packages
git add -A small
git add -A small-package
git commit -m "update"
git push -f
