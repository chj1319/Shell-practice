#!/bin/bash

sum=0
count=0

# 1) 각 과목에 대한 등급 출력
echo "개별 점수 등급"
for score in "$@"
do
    if [ $score -ge 90 ]; then
        echo "점수 $score : A"
    else
        echo "점수 $score : B"
    fi

    # 평균을 구하기 위해 합계 누적
    sum=$((sum + score))
    count=$((count + 1))
done

# 2) 평균 등급 출력
avg=$((sum/count))
echo "평균 결과"
echo "평균 점수 : $avg"

if [ $avg -ge 90 ]; then
	echo "A"
else
	echo "B"
fi


