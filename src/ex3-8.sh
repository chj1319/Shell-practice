#!/bin/bash

# 1. DB 폴더가 없으면 생성
if [ ! -d "DB" ]; then
    mkdir DB
    echo "DB 폴더를 생성했습니다."
else
    echo "DB 폴더가 이미 존재합니다."
fi

# 2. DB 폴더 안에 5개의 파일 생성 (file1.txt ~ file5.txt)
echo "파일 5개를 생성합니다..."
for i in {1..5}
do
    # touch는 빈 파일을 만드는 명령어
    touch "DB/file$i.txt"
done

# 3. 파일 압축하기 (tar 명령어 사용)
tar -cvf DB/files.tar DB/file*.txt
echo "파일 압축이 완료되었습니다."

# 4. train 폴더 생성
if [ ! -d "train" ]; then
    mkdir train
fi

# 5. 심볼릭 링크(바로가기) 생성
echo "train 폴더에 심볼릭 링크를 생성합니다..."
cwd=$(pwd) 

for i in {1..5}
do
	ln -s "$cwd/DB/file$i.txt" "$cwd/train/file$i.txt"
done

echo "모든 작업이 완료되었습니다."
