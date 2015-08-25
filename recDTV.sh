#!/bin/bash

#チャンネル番号(入力)
Ch=${1}

#録画秒数(入力)
Time=${2}

#番組名取得
Title=`programmeGetter.sh ${1}`

#日付取得
Date=`date "+%Y%m%d%H%M%S"`

#ファイル名生成
filename=${Title}_"D"${Date}"P"$$"T"${Time}

echo ${FileName}

