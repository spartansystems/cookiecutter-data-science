#!/usr/bin/env bash
if [ "[OPTIONAL] your-postgres-url" != "{{ cookiecutter.postgres_url }}" ]; then
    sqlacodegen '{{ cookiecutter.postgres_url }}' >> ./src/data/external/models.py
fi
