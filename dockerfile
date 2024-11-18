# 베이스 이미지 설정
FROM python:3.12-slim

# 작업 디렉토리 설정
WORKDIR /app

# 의존성 설치
COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

# 프로젝트 복사
COPY . .

# 서버 실행
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]