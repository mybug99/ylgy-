#!/bin/bash

# 用户token，自行抓包获取，过滤easygame2021域名请求，请求头中带t的即是token
token=""
# 通过时间秒
gameTime=300
# 通过次数
count=200

url="https://cat-match.easygame2021.com/sheep/v1/game/game_over?rank_score=1&rank_state=1&rank_time=$gameTime&rank_role=1&skin=1"

echo "请求信息=t: $token" $url
for((i=1;i<=$count;i++));
do
	echo ""
	echo "开始请求第 $i 次"
	curl --connect-timeout 5 -m 5 -i -H "t: $token" $url
	echo ""
	echo "开始请求第 $i 次成功"
	sleep 2
done


echo "请求结束"