#!/usr/bin/env bash
set -euo pipefail

echo "Starting environment setup..."

# 1. إنشاء البيئة الافتراضية
python3 -m venv .venv

# 2. تفعيل البيئة
source .venv/bin/activate

# 3. تحميل المكتبات من ملف requirements
pip install -r requirements.txt

# 4. تشغيل ملف الفحص للتأكد من الجاهزية
python3 test_environment.py

echo "Setup complete"