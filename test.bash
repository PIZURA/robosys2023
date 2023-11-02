#!/bin/bash -xv
# SPDX-FileCopyrightText: 2023 Yamaguchi Atsushi
# SPDX-Licence-Identifier: BSD-3-Clause

ng () {
	echo NG at line $1
	res=1
}

res=0


out=$(seq 5 | ./plus)
[ "${out}" = 15.0 ]  || ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res
