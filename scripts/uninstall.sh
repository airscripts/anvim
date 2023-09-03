#!/bin/bash
echo "[1/4] Creating configs variable..."
export ANVIM=~/.config/nvim

echo "[2/4] Checking if configs are present..."
if [[ -d "$ANVIM" ]] 
  then 
    echo "[3/4] Uninstalling anvim..."
    rm -r $ANVIM

  else
    echo "[3/4] Configs not found, uninstallation skipped."
fi

echo "[4/4] Uninstallation process completed successfully!"
