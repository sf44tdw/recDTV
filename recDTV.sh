#!/bin/bash

#ホームディレクトリへ移動
cd  $HOME

#ログディレクトリ(ホームディレクトリ直下)
LogDir=$HOME/PtLog/
if [ ! -e ${LogDir} ]; then
`mkdir ${LogDir}`
fi

# ファイル更新日時が10日を越えたログファイルを削除
PARAM_DATE_NUM=10
find ${LogDir} -name "*.log" -type f -mtime +${PARAM_DATE_NUM} -exec rm -f {} \;

#チャンネル番号(入力)
Ch=${1}
#echo ${Ch}

#録画秒数(入力)
Time=${2}
#echo ${Time}

#番組名取得
Title=`programmeGetter.sh ${1}`
#echo ${Title}

#日付取得
Date=`date "+%Y%m%d%H%M%S"`
#echo ${Date}

#ファイル名生成
FileName=${Title}_"D"${Date}"P"$$"T"${Time}"C"${Ch}".ts"
LogFile=${LogDir}${FileName}".log"


#録画
/usr/local/bin/recpt1 --strip --b25 ${Ch} ${Time} ${FileName} 1>${LogFile} 2>&1

echo ${LogFile} >> ${LogFile}
