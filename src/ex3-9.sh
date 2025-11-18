#!/bin/bash

db_file="DB.txt"

# 파일이 없으면 빈 파일 생성
if [ ! -f "$db_file" ]; then
    touch "$db_file"
fi

while true
do
    echo "========================"
    echo "1) 팀원 정보 추가"
    echo "2) 팀원과 한 일 기록"
    echo "3) 팀원 검색"
    echo "4) 수행 내용 검색"
    echo "5) 종료"
    echo "========================"
    read -p "메뉴를 선택하세요: " choice

    case $choice in
        1)
            read -p "팀원 이름: " name
            read -p "생년월일 또는 전화번호: " info
            # 정보를 DB.txt에 이어쓰기 (>>)
            echo "[팀원정보] 이름: $name, 정보: $info" >> "$db_file"
            echo "저장되었습니다."
            ;;
        2)
            read -p "팀원 이름: " name
            read -p "토의/수행 내용: " work
            # 날짜 자동 입력 (date 명령어)
            today=$(date +%Y-%m-%d)
            echo "[활동기록] 날짜: $today, 이름: $name, 내용: $work" >> "$db_file"
            echo "기록되었습니다."
            ;;
        3)
            read -p "검색할 팀원 이름: " keyword
            echo "--- 검색 결과 ---"
            # grep으로 파일에서 특정 단어 찾기
            grep "$keyword" "$db_file"
            ;;
        4)
            read -p "검색할 날짜 또는 내용: " keyword
            echo "--- 검색 결과 ---"
            grep "$keyword" "$db_file"
            ;;
        5)
            echo "프로그램을 종료합니다."
            break
            ;;
        *)
            echo "잘못된 입력입니다."
            ;;
    esac
    echo ""
done
