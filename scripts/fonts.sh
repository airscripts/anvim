#!/bin/sh
echo "[1/5] Cloning nerd fonts repository..."
git clone --filter=blob:none --sparse git@github.com:ryanoasis/nerd-fonts

echo "[2/5] Entering nerd-fonts folder..."
cd nerd-fonts

echo "[3/5] Executing sparse checkout on fonts folder..."
git sparse-checkout add patched-fonts/FiraCode

echo "[4/5] Installing fonts..."
./install.sh FiraCode

echo "[5/5] Fonts installation completed successfully!"
