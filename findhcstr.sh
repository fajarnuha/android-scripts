#!/bin/bash
# Nome: Zhenlei Ji
# Email: zhenlei.ji@gmail.com
#
# Easy way to check hardcoded strings.
#
# HOW TO USE
# Commands:
# ~$ ./hardcoded [PATH]
#
# Example :
# ~$ ./hardcoded ~/git/HS-Apps-Android
find $1 -type f -name '*.xml' -exec grep android:text=\"[^@] {} \; \
	| cut -d '"' -f 2 \
	| sort \
	| uniq