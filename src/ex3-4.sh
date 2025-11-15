#!/bin/bash

score=()

while true
do
	echo "========================"
    	echo "1) 과목 성적 추가"
    	echo "2) 입력된 모든 점수 보기"
   	echo "3) 평균 점수 확인"
    	echo "4) 평균 등급(GPA) 변환"
    	echo "5) 종료"
    	echo "========================"
    	read -p "메뉴를 선택하세요 (1-5): " choice

	case $choice in 
		1)
			read -p "점수 입력: " input_score
			score+=($input_score)
			;;
		2)
			echo "입력된 점수들 : ${score[@]}"
			;;
		3)
			if [ ${#score[@]} -eq 0 ]; then
				echo "입력된 점수 없음"
			else
				sum=0
				for s in "${score[@]}";do
					sum=$((sum + s))
				done
				avg=$((sum / ${#score[@]}))
				echo "평균 : $avg"
			fi
			;;
		4)
			if [ ${#score[@]} -eq 0 ]; then
				echo "입력된 점수 없음"
			else 
				sum=0
				for s in "${score[@]}"; do
					sum=$((sum + s))
				done
				avg=$((sum / ${#score[@]}))

				if [ $avg -ge 90 ]; then
					echo "A"
				else 
					echo "B"
				fi
			fi
			;;
		5)
			echo "프로그램 종료"
			break
			;;
		*)
			echo "잘못된 입력"
			;;
	esac
	echo ""
done
