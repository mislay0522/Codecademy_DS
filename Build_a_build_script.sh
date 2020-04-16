#!/bin/bash
echo "Hello, XJ!"
firstline=$(head -n1 source/changelog.md)
read -a splitfirstline <<< $firstline
version=${splitfirstline[1]}
echo "Version:" $version
echo "Enter 1 for continue; 0 for exit"
read versioncontinue
if [ $versioncontinue -eq 1 ]
then 
  echo "OK"
  files=source/*
  for filename in $files
  do 
    if [ "$filename" != "source/secretinfo.md" ]
    then
      echo "Copy" $filename
      cp $filename build/
    else
      echo "Not Copy" $filename
    fi
  done
  
  cd source/
  echo "Build Version $version: "
  ls
  cd ..
else 
  echo "Plese come back when you are ready"
fi


