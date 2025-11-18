import sys

print("--- Python 프로그램 시작 ---")

# 인자가 있는지 확인 (0번은 파일명이므로 1번부터 데이터)
if len(sys.argv) > 1:
    print(f"입력된 인자 목록: {sys.argv[1:]}")
else:
    print("입력된 인자가 없습니다.")

print("--- Python 프로그램 끝 ---")
