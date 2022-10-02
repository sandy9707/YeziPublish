#!/usr/local/bin/zsh
cd '/Users/sandy/Nutstore Files/Nutstore/YeziPublish'
git pull
git add .
commitTime=`date +"%Y-%m-%d %H-%M-%S"`
git commit -a -m "${commitTime}"
git push origin main