#!/usr/bin/env bash
# Script de build para Render

set -o errexit  # Detiene el script si hay un error

pip install -r requirements.txt

python manage.py collectstatic --no-input

python manage.py migrate
