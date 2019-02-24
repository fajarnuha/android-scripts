#!/bin/bash

adb shell input keyevent 26
adb shell input swipe 540 540 540 100
adb shell input text $1
