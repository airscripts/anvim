#!/bin/bash
echo "[1/4] Creating configs variable..."
export ANVIM=~/.config/nvim

echo "[2/4] Checking if configs are present..."
if [[ -d "$ANVIM" ]] 
  then 
    echo "[3/4] Making configs backup inside ~/.config/nvim.bak..."
    mv ~/.config/nvim ~/.config/nvim.bak

  else
    echo "[3/4] Configs not found, backup skipped."
fi

echo "[4/4] Backup process completed successfully!"
