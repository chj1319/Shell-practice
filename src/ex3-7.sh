#!/bin/bash

while true
do
    echo "========================"
    echo "1) 사용자 정보 확인 (whoami)"
    echo "2) CPU 사용률 확인 (top)"
    echo "3) 메모리 사용량 확인 (free)"
    echo "4) 디스크 사용량 확인 (df)"
    echo "5) 종료"
    echo "========================"
    read -p "원하는 기능을 선택하세요: " choice

    case $choice in
        1)
            echo "--- 사용자 정보 ---"
            whoami
            id
            ;;
        2)
            echo "--- CPU 프로세스 정보 (q를 눌러서 나가세요) ---"
            top
            ;;
        3)
            echo "--- 메모리 사용량 ---"
            free -h
            ;;
        4)
            echo "--- 디스크 사용량 ---"
            df -h
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
