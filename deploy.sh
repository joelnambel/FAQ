#!/bin/bash

# Script Deploy Otomatis untuk Pelindo RegPro Chatbot
# Pilih metode: surge, netlify, atau vercel

echo "🚀 Pelindo RegPro Chatbot - Deploy Script"
echo "=========================================="
echo ""
echo "Pilih metode deploy:"
echo "1. Surge.sh (Paling cepat & mudah)"
echo "2. Netlify CLI"
echo "3. Vercel CLI"
echo "4. Exit"
echo ""
read -p "Pilih (1-4): " choice

case $choice in
    1)
        echo ""
        echo "📦 Menggunakan Surge.sh..."
        
        # Check jika surge sudah terinstall
        if ! command -v surge &> /dev/null; then
            echo "❌ Surge belum terinstall. Install dulu dengan: npm install -g surge"
            exit 1
        fi
        
        echo "🚀 Deploying..."
        surge . pelindo-regpro-chatbot.surge.sh
        ;;
        
    2)
        echo ""
        echo "📦 Menggunakan Netlify CLI..."
        
        # Check jika netlify sudah terinstall
        if ! command -v netlify &> /dev/null; then
            echo "❌ Netlify CLI belum terinstall. Install dulu dengan: npm install -g netlify-cli"
            exit 1
        fi
        
        echo "🚀 Deploying to production..."
        netlify deploy --prod
        ;;
        
    3)
        echo ""
        echo "📦 Menggunakan Vercel CLI..."
        
        # Check jika vercel sudah terinstall
        if ! command -v vercel &> /dev/null; then
            echo "❌ Vercel CLI belum terinstall. Install dulu dengan: npm install -g vercel"
            exit 1
        fi
        
        echo "🚀 Deploying to production..."
        vercel --prod
        ;;
        
    4)
        echo "Keluar..."
        exit 0
        ;;
        
    *)
        echo "❌ Pilihan tidak valid!"
        exit 1
        ;;
esac

echo ""
echo "✅ Deploy selesai!"

