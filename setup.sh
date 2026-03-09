#!/usr/bin/env bash
# setup.sh — Hospital Admission Records Analysis Reproducibility Script
#
# Usage:
#   bash setup.sh
#
# Run after activating your venv and installing requirements.txt.

set -euo pipefail

echo "=== Environment Verification: Hospital Admission Records Analysis ==="
echo ""

# ── Python version check ──────────────────────────────────────────────────────
echo "Checking Python version..."
PYTHON_VERSION=$(python --version 2>&1)
echo "  Found: $PYTHON_VERSION"
python -c "
import sys
if sys.version_info < (3, 11):
    print('ERROR: Python 3.11 or higher is required.')
    sys.exit(1)
print('  Python version OK')
"

# ── Dependency check ──────────────────────────────────────────────────────────
echo ""
echo "Checking required packages..."

# التحقق من المكتبات اللي أضفتها في requirements.txt
python -c "import pandas; print(f'  pandas {pandas.__version__} OK')"
python -c "import matplotlib; print(f'  matplotlib {matplotlib.__version__} OK')"

# ── Project-specific verification ─────────────────────────────────────────────
echo ""
echo "Running project-specific checks..."

# التأكد من وجود ملف البيانات أو السكريبت الأساسي
if [ ! -f "test_environment.py" ]; then
  echo "ERROR: test_environment.py not found"
  exit 1
fi
echo "  test_environment.py found OK"

echo ""
echo "=== All checks passed. Environment is ready. ==="