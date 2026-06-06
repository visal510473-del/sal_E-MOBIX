#!/usr/bin/env bash
# exit on error
set -o errexit

# ដំឡើង library ទាំងអស់
pip install -r requirements.txt

# ប្រមូលផ្តុំឯកសារ static និង migrate database
python manage.py collectstatic --no-input
python manage.py migrate