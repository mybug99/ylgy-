#!/bin/bash

# 用户token
token="eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE2OTQ0MDY3MDgsIm5iZiI6MTY2MzMwNDUwOCwiaWF0IjoxNjYzMzAyNzA4LCJqdGkiOiJDTTpjYXRfbWF0Y2g6bHQxMjM0NTYiLCJvcGVuX2lkIjoiIiwidWlkIjozMjczOTcwLCJkZWJ1ZyI6IiIsImxhbmciOiIifQ.jGlBXoJQoiUVjdO3ROJqUbl0TMB8nJMHZbl93olTYgk"
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