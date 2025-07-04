#!/bin/bash

# Dừng nếu có lỗi
set -e

echo "[+] Bắt đầu build Hugo site..."
hugo

echo "[+] Di chuyển vào thư mục public/"
cd public

echo "[+] Thêm thay đổi vào Git..."
git add .

echo "[+] Commit các thay đổi..."
git commit -m "🚀 Deploy at $(date)" || echo "[i] Không có gì để commit"

echo "[+] Push lên GitHub Pages..."
git push

echo "[✅] Đã deploy thành công lên: https://kykhongbithac.github.io"
cd ..
