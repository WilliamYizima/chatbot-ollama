.PHONY: venv install ollama-serve ollama-pull

venv:
	virtualenv .venv
	@echo "Run: source .venv/bin/activate"

install:
	pip install -r requirements.txt

ollama-serve:
	ollama serve &

ollama-pull:
	ollama pull qwen3-coder:latest

run:
	python chat.py

