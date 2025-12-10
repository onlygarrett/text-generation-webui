#!/usr/bin/env bash

WEBUI_DIR="$HOME/text-generation-webui"
MODEL_NAME="qwen2.5-coder-14b"

cd "$WEBUI_DIR"

python3 server.py \
  --model "$MODEL_NAME" \
  --loader ExLlamaV2_HF \
  --trust-remote-code \
  --bf16 \
  --ctx-size 4096 \
  --listen \
  --listen-host 0.0.0.0 \
  --api \
  --api-port 5000 \
  --nowebui
