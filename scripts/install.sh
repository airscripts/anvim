#!/bin/bash
echo "[1/4] Creating configs variable..."
export ANVIM=~/.config/nvim

echo "[2/4] Creating nvim configs folder..."
mkdir -p $ANVIM

echo "[3/4] Copying anvim configs..."
cp -r configs/* $ANVIM

echo "[4/4] Installation process completed successfully!"
