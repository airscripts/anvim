#!/bin/sh
echo "[1/4] Creating configs variable..."
export ANVIM=~/.config/nvim

echo "[2/4] Checking if configs are present..."
if [ -d "$ANVIM" ]
  then 
    echo "[3/4] Committing changes to this repository..."
    cp -r ~/.config/nvim/* ./configs

  else
    echo "[3/4] Configs not found, commit skipped."
fi

echo "[4/4] Commit process completed successfully!"
