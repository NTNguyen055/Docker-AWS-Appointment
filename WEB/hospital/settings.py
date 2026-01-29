"""
Django settings for hospital project.
Updated for Docker (Stage 1) & AWS S3
"""

from pathlib import Path
import os
from dotenv import load_dotenv # Thêm thư viện này để đọc .env

# 1. Nạp biến môi trường từ file .env
load_dotenv()

# Build paths inside the project like this: BASE_DIR / 'subdir'.
BASE_DIR = Path(__file__).resolve().parent.parent

# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/5.2/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
# Lấy từ env, nếu không có thì dùng chuỗi tạm (cho local)
SECRET_KEY = os.getenv('SECRET_KEY', "django-insecure-ccz+v=f&cws9w43$$&b=fz8znqnnf8xn$(_c8mb472zpa+r55l")

# SECURITY WARNING: don't run with debug turned on in production!
# Đọc từ env, mặc định là True
DEBUG = os.getenv('DEBUG', 'True') == 'True'

# Cho phép tất cả các host (cần thiết cho Docker)
ALLOWED_HOSTS = ['*']


# Application definition

INSTALLED_APPS = [
    "django.contrib.admin",
    "django.contrib.auth",
    "django.contrib.contenttypes",
    "django.contrib.sessions",
    "django.contrib.messages",
    "django.contrib.staticfiles",
    
    # 3rd Party Apps
    "storages",          # <--- MỚI: Thêm cái này để dùng S3
    "crispy_forms",
    "crispy_bootstrap5",
    "bootstrap5",
    "widget_tweaks",
    "paypal.standard.ipn",
    
    # My Apps (Giữ nguyên của bạn)
    "members",
    "userauths",
    "doctor",
]

MIDDLEWARE = [
    "django.middleware.security.SecurityMiddleware",
    "django.contrib.sessions.middleware.SessionMiddleware",
    "django.middleware.common.CommonMiddleware",
    "django.middleware.csrf.CsrfViewMiddleware",
    "django.contrib.auth.middleware.AuthenticationMiddleware",
    "django.contrib.messages.middleware.MessageMiddleware",
    "django.middleware.clickjacking.XFrameOptionsMiddleware",
    "whitenoise.middleware.WhiteNoiseMiddleware", # Giữ nguyên Whitenoise
]

ROOT_URLCONF = "hospital.urls"
AUTH_USER_MODEL = 'userauths.User'

# Template Configuration
CRISPY_TEMPLATE_PACK = 'bootstrap5'
CRISPY_ALLOWED_TEMPLATE_PACKS = "bootstrap5"

TEMPLATES = [
    {
        "BACKEND": "django.template.backends.django.DjangoTemplates",
        "DIRS": [BASE_DIR / 'templates'],
        "APP_DIRS": True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
            ],
        },
    },
]

WSGI_APPLICATION = "hospital.wsgi.application"

# 2. Cấu hình Database (Tự động chuyển MySQL cho Docker)
# Logic: Đọc từ .env, nếu không có thì fallback về SQLite (để tránh lỗi crash)
DB_ENGINE = os.getenv('DB_ENGINE', 'django.db.backends.sqlite3')
DB_NAME = os.getenv('DB_NAME', BASE_DIR / 'db.sqlite3')
DB_USER = os.getenv('DB_USER', '')
DB_PASSWORD = os.getenv('DB_PASSWORD', '')
DB_HOST = os.getenv('DB_HOST', '')
DB_PORT = os.getenv('DB_PORT', '')

DATABASES = {
    'default': {
        'ENGINE': DB_ENGINE,
        'NAME': DB_NAME,
        'USER': DB_USER,
        'PASSWORD': DB_PASSWORD,
        'HOST': DB_HOST,
        'PORT': DB_PORT,
        'OPTIONS': {
            "init_command": "SET sql_mode='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION'"
        } if 'mysql' in DB_ENGINE else {}
    }
}

# Password validation
AUTH_PASSWORD_VALIDATORS = [
    { "NAME": "django.contrib.auth.password_validation.UserAttributeSimilarityValidator" },
    { "NAME": "django.contrib.auth.password_validation.MinimumLengthValidator" },
    { "NAME": "django.contrib.auth.password_validation.CommonPasswordValidator" },
    { "NAME": "django.contrib.auth.password_validation.NumericPasswordValidator" },
]

# Internationalization
LANGUAGE_CODE = "en-us"
TIME_ZONE = "Asia/Ho_Chi_Minh"
USE_I18N = True
USE_TZ = True

# 3. Cấu hình AWS S3 (Chỉ kích hoạt khi USE_S3=TRUE trong .env)
USE_S3 = os.getenv('USE_S3') == 'TRUE'

if USE_S3:
    # Cấu hình lấy từ biến môi trường
    AWS_ACCESS_KEY_ID = os.getenv('AWS_ACCESS_KEY_ID')
    AWS_SECRET_ACCESS_KEY = os.getenv('AWS_SECRET_ACCESS_KEY')
    AWS_STORAGE_BUCKET_NAME = os.getenv('AWS_STORAGE_BUCKET_NAME')
    AWS_S3_REGION_NAME = os.getenv('AWS_S3_REGION_NAME', 'us-east-1')
    AWS_S3_SIGNATURE_VERSION = 's3v4'
    AWS_S3_FILE_OVERWRITE = False
    
    # Static & Media files configuration for S3
    STORAGES = {
        "default": {
            "BACKEND": "storages.backends.s3boto3.S3Boto3Storage",
        },
        "staticfiles": {
            "BACKEND": "storages.backends.s3boto3.S3StaticStorage",
        },
    }
    # URL khi dùng S3
    STATIC_URL = f'https://{AWS_STORAGE_BUCKET_NAME}.s3.amazonaws.com/static/'
    MEDIA_URL = f'https://{AWS_STORAGE_BUCKET_NAME}.s3.amazonaws.com/media/'

else:
    # Chạy Local: Lưu file vào thư mục trong máy (Giữ nguyên cấu hình cũ của bạn)
    STATIC_URL = "/static/"
    STATIC_ROOT = BASE_DIR / 'productionfiles'
    
    # Dùng Whitenoise khi chạy local
    STATICFILES_STORAGE = 'whitenoise.storage.CompressedManifestStaticFilesStorage'
    
    MEDIA_URL = '/media/'
    MEDIA_ROOT = os.path.join(BASE_DIR, 'media')

STATICFILES_DIRS = [
    BASE_DIR / 'mystaticfiles'
]

# Default primary key field type
DEFAULT_AUTO_FIELD = "django.db.models.BigAutoField"

# Email Settings
# LƯU Ý: Mật khẩu email nên lấy từ .env
EMAIL_BACKEND = 'django.core.mail.backends.smtp.EmailBackend'
EMAIL_HOST = 'smtp.gmail.com'
EMAIL_USE_TLS = True
EMAIL_PORT = 587
EMAIL_HOST_USER = 'trangpk.22it@vku.udn.vn'
# Nếu trong .env không có thì dùng cái cũ của bạn làm dự phòng
EMAIL_HOST_PASSWORD = os.getenv('EMAIL_HOST_PASSWORD', 'mchg dbgv bouv enxt') 
DEFAULT_FROM_EMAIL = 'trangpk.22it@vku.udn.vn'

# PayPal Settings
PAYPAL_RECEIVER_EMAIL = 'sb-7jsao45883571@business.example.com'
PAYPAL_TEST = True