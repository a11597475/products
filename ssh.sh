#!/bin/bash 
git config --get remote.origin.url
#git branch -a
#git branch
##eval "$(ssh-agent -s)"
##ssh-add #-l
git pull origin master
echo 'pull done'

git add .
echo 'add done'
##eval "$(ssh-agent -s)"
##ssh-add #-l

#timestamp=$(date +"%D %T")
#starttime=$(date +%Y-%m-%d\ %H:%M:%S)
#=前后不能有空格
ttime=`date +"%Y-%m-%d %H:%M:%S"`
  ts=`date +"%Y-%m-%d %H:%M:%S"`
git commit -m "Changes to be committed:Update time: $ts"
echo 'commit done'
echo $(date +%Y-%m-%d\ %H:%M:%S)
#echo `date +"%Y-%m-%d %H:%M:%S"`
git push -u origin master
echo 'push done'

