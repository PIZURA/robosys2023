#!/bin/bash

ng () {
	echo ${1}行目が違う！
	ret=1000
}

ret=20
a=山田
[ "$a" = 上田 ] || ng "$LINENO"
[ "$a" = 山田 ] || ng "$LINENO"

exit $ret
