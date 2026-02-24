.PHONY: venv install ollama-serve ollama-pull env

venv:
	virtualenv .venv
	@echo "Run: source .venv/bin/activate"

install:
	pip install -r requirements.txt

ollama-serve:
	ollama serve &

ollama-pull:
	ollama pull qwen3-coder:latest

env:
	@if [ -f .env ]; then \
		echo ".env already exists, skipping."; \
	else \
		cp .env.example .env; \
		echo ".env created from .env.example"; \
	fi

run:
	python chat.py

