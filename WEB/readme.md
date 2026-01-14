## 🖥️ Backend Django

### 1. Nếu chỉ chạy Web không docker: Tạo virtual environment và cài package

```bash
# di chuyển đến folder backend


# tạo venv
python -m venv venv

# kích hoạt venv

# Windows
venv\Scripts\activate

# Mac/Linux
source venv/bin/activate

# cài dependencies
pip install -r requirements.txt

python manage.py migrate

# cấu hình lại database trong hospital/setting

# tạo migration từ models
python manage.py makemigrations

# áp dụng migration, tạo bảng trong database
python manage.py migrate

# chạy chương trình
python manage.py runserver

```
### 2. Chạy docker: docker-compose up --build

# WEB: http://localhost:8000
# phpmyadmin: http://localhost:8080
## username: root / password: Banhmi4o@

