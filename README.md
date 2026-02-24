# chatbot-ollama

A simple privacy-focused terminal chatbot that runs LLMs locally using [Ollama](https://ollama.com). No cloud, no API keys — everything runs on your machine.

---

## Table of Contents

- [How it works](#how-it-works)
- [Requirements](#requirements)
- [Setup](#setup)
- [Running](#running)
- [Commands](#commands)

---

## How it works

`chat.py` connects to a locally running Ollama server and sends messages to the model, maintaining the full conversation history so the model has context across turns. Responses are streamed token by token in the terminal.

---

## Requirements

- **Python 3.10+**
- **[Ollama](https://ollama.com/download)** installed and available in your PATH
- **virtualenv** (`pip install virtualenv`)

---

## Setup

Run these commands in order:

```bash
# 1. Create a virtual environment
make venv

# 2. Activate it
source .venv/bin/activate

# 3. Copy the env file
make env

# 4. Install Python dependencies
make install

# 5. Start the Ollama server (runs in background)
make ollama-serve

# 6. Download the default model
make ollama-pull
```

> You only need to do steps 1–4 once. Steps 5–6 are needed whenever you start fresh.

---

## Running

```bash
make run
```

Or directly:

```bash
python chat.py
```

To use a different model, edit `.env`:

```env
LLAMA_MODEL=llama3.2:latest
```

---

## Commands

Inside the chat, type any of these:

| Command | Description |
|---|---|
| `help` | Show all commands |
| `models` | List locally available models |
| `model <name>` | Switch to a different model |
| `clear` | Clear conversation history |
| `save` | Save conversation to a file |
| `save <filename>` | Save with a custom filename |
| `stats` | Show conversation statistics |
| `quit` / `exit` | Exit the chatbot |
