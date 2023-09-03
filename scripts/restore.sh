#!/bin/sh
echo "[1/4] Creating configs backup variable..."
export ANVIM=~/.config/nvim.bak

echo "[2/4] Checking if backup is present..."
if [ -d "$ANVIM" ] 
  then 
    echo "[3/4] Restoring backup..."
    mv ~/.config/nvim.bak ~/.config/nvim

  else
    echo "[3/4] Backup not found, restore skipped."
fi

echo "[4/4] Restore process completed successfully!"
