# Deploy Website via Bash/Terminal

## 🚀 Metode 1: Surge.sh (Paling Mudah & Cepat)

### Install Surge
```bash
npm install -g surge
```

### Deploy
```bash
# Masuk ke folder project
cd FAQ

# Deploy
surge

# Ikuti instruksi:
# 1. Masukkan email (atau buat akun baru)
# 2. Masukkan password
# 3. Tekan Enter untuk domain default, atau masukkan domain custom
# Contoh domain: pelindo-regpro-chatbot.surge.sh
```

### Update setelah perubahan
```bash
surge
# Surge akan mengingat folder dan domain sebelumnya
```

**Keuntungan:**
- ✅ Gratis selamanya
- ✅ SSL otomatis (HTTPS)
- ✅ Sangat cepat
- ✅ Cocok untuk testing cepat

---

## 🚀 Metode 2: Netlify CLI

### Install Netlify CLI
```bash
npm install -g netlify-cli
```

### Login ke Netlify
```bash
netlify login
# Akan membuka browser untuk login
```

### Deploy pertama kali
```bash
# Masuk ke folder project
cd FAQ

# Deploy
netlify deploy

# Ikuti instruksi:
# - Pilih "Create & configure a new site"
# - Pilih nama site (atau tekan Enter untuk random)
```

### Deploy untuk production
```bash
netlify deploy --prod
```

### Update setelah perubahan
```bash
netlify deploy --prod
```

**Keuntungan:**
- ✅ Gratis
- ✅ Auto-deploy dari git
- ✅ Preview deployments
- ✅ Custom domain

---

## 🚀 Metode 3: Vercel CLI

### Install Vercel CLI
```bash
npm install -g vercel
```

### Login ke Vercel
```bash
vercel login
```

### Deploy pertama kali
```bash
# Masuk ke folder project
cd FAQ

# Deploy
vercel

# Ikuti instruksi:
# - Set up and deploy? Y
# - Which scope? (pilih akun Anda)
# - Link to existing project? N
# - What's your project's name? pelindo-regpro-chatbot
# - In which directory is your code located? ./
```

### Deploy untuk production
```bash
vercel --prod
```

**Keuntungan:**
- ✅ Gratis
- ✅ CDN global
- ✅ Auto-deploy
- ✅ Preview URLs

---

## 🚀 Metode 4: GitHub Pages (via Git)

### Install Git (jika belum)
```bash
# Windows: Download dari https://git-scm.com
# Atau gunakan Git Bash
```

### Setup repository
```bash
# Masuk ke folder project
cd FAQ

# Inisialisasi git
git init

# Tambahkan semua file
git add .

# Commit
git commit -m "Initial commit - Pelindo RegPro Chatbot"

# Buat branch main
git branch -M main

# Tambahkan remote repository (ganti USERNAME dan REPO_NAME)
git remote add origin https://github.com/USERNAME/REPO_NAME.git

# Push ke GitHub
git push -u origin main
```

### Setup GitHub Pages (setelah push ke GitHub)
1. Buka repository di GitHub
2. Settings → Pages
3. Source: Deploy from a branch
4. Branch: `main`, Folder: `/ (root)`
5. Save

Website akan tersedia di: `https://USERNAME.github.io/REPO_NAME/`

---

## 🚀 Metode 5: Firebase Hosting

### Install Firebase CLI
```bash
npm install -g firebase-tools
```

### Login ke Firebase
```bash
firebase login
```

### Init project
```bash
# Masuk ke folder project
cd FAQ

# Init Firebase
firebase init hosting

# Pilih:
# - Use an existing project (atau buat baru)
# - Public directory: . (current directory)
# - Single-page app? N
# - Set up automatic builds? N
```

### Deploy
```bash
firebase deploy --only hosting
```

**Keuntungan:**
- ✅ Gratis tier besar
- ✅ CDN global
- ✅ Custom domain
- ✅ SSL otomatis

---

## 🔧 Script Deploy Otomatis

### Buat file `deploy.sh` untuk Surge.sh
```bash
#!/bin/bash
# deploy.sh

echo "🚀 Deploying to Surge.sh..."
surge . pelindo-regpro-chatbot.surge.sh
echo "✅ Deploy selesai!"
```

### Buat file `deploy.sh` untuk Netlify
```bash
#!/bin/bash
# deploy.sh

echo "🚀 Deploying to Netlify..."
netlify deploy --prod
echo "✅ Deploy selesai!"
```

### Jalankan script
```bash
# Beri permission execute (Linux/Mac)
chmod +x deploy.sh

# Jalankan
./deploy.sh

# Windows (Git Bash)
bash deploy.sh
```

---

## 📋 Quick Reference

### Surge.sh (Paling Cepat)
```bash
npm install -g surge
cd FAQ
surge
```

### Netlify CLI
```bash
npm install -g netlify-cli
netlify login
cd FAQ
netlify deploy --prod
```

### Vercel CLI
```bash
npm install -g vercel
vercel login
cd FAQ
vercel --prod
```

### GitHub Pages
```bash
cd FAQ
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/USERNAME/REPO_NAME.git
git push -u origin main
# Lalu setup Pages di GitHub Settings
```

---

## 💡 Tips

1. **Pastikan Node.js sudah terinstall**
   ```bash
   node --version
   npm --version
   ```

2. **Jika belum ada Node.js:**
   - Download dari https://nodejs.org
   - Install, lalu restart terminal

3. **Untuk Windows:**
   - Gunakan Git Bash atau PowerShell
   - Atau install WSL (Windows Subsystem for Linux)

4. **Update setelah perubahan file:**
   - Ubah file → deploy lagi dengan perintah yang sama
   - Tidak perlu setup ulang

---

## 🎯 Rekomendasi

**Paling mudah:** Surge.sh
```bash
npm install -g surge && cd FAQ && surge
```

**Paling profesional:** Netlify CLI atau Vercel CLI
- Fitur lebih lengkap
- Integrasi dengan Git
- Auto-deploy

**Paling simple untuk pemula:** Surge.sh
- Setup sekali, deploy berkali-kali
- Tidak perlu konfigurasi

