#!/bin/bash
# Git稀疏克隆，只克隆指定目录到本地
function git_update() {
  repourl="$1" repodir="$2" && shift 2
  if [ -d "$repodir" ]; then
    cd $repodir && git pull
  else
    git clone --depth=1 $repourl $repodir
  fi

  final_dir=${repodir##*/}
  git rm -rf $final_dir
  mkdir $final_dir
  cp -r $repodir/* $final_dir
}

git_update https://github.com/kenzok8/openwrt-packages tmp/openwrt-packages
git_update https://github.com/kenzok8/small tmp/small
git_update https://github.com/kenzok8/small-package tmp/small-package
git_update https://github.com/danchexiaoyang/luci-app-onliner tmp/other
git add -A .
git commit -m "update"
git push -f