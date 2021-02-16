#! /usr/bin/env bash

path=$(adb shell pm path $1 | grep -i base.apk | cut -d : -f2)
name=$(echo $1 | sed 's/\./-/g').apk
echo "Exporting $name ...."
adb pull $path $name
