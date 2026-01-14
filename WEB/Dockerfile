# 1. Sử dụng Python 3.12 (Phiên bản Slim nhẹ nhất)
FROM python:3.12-slim

# 2. Thiết lập thư mục làm việc trong container
WORKDIR /app

# 3. Biến môi trường: Tối ưu cho Python trong Docker
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# 4. Cài đặt các gói hệ thống cần thiết
# (Vì dùng PyMySQL nên không cần libmysqlclient-dev, chỉ cần cái cơ bản để build)
RUN apt-get update && apt-get install -y \
    build-essential \
    pkg-config \
    && rm -rf /var/lib/apt/lists/*

# 5. Copy file requirements và cài đặt thư viện
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 6. Copy toàn bộ code dự án vào container
COPY . .

# 7. Mở port 8000
EXPOSE 8000

# 8. Lệnh chạy mặc định
# 'hospital.wsgi' là tên project của bạn (lấy từ settings.py cũ)
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "hospital.wsgi:application"]