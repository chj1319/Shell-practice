#!/bin/bash

# 인자가 없으면 종료
if [ $# -lt 2 ]; then
    echo "오류: 2개 이상의 인자를 넣어주세요."
    exit 1
fi


if [ -f "files.py" ]; then
    python3 files.py "$@"
else
    echo "files.py 파일이 없습니다. 먼저 만들어주세요."
fi
