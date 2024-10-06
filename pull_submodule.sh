#!/bin/bash
git clone https://github.com/kenzok8/small-package tmp/small-package
cp -r tmp/small-package/* . 
rm -rf tmp
git add -A .
git commit -m "update"
git push -f
