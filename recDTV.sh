#!/bin/bash

#チャンネル番号(入力)
Ch=${1}
echo ${Ch}

#録画秒数(入力)
Time=${2}
echo ${Time}

#番組名取得
Title=`programmeGetter.sh ${1}`
echo ${Title}

#日付取得
Date=`date "+%Y%m%d%H%M%S"`
echo ${Date}

#ファイル名生成
FileName=${Title}_"D"${Date}"P"$$"T"${Time}

echo ${FileName}

