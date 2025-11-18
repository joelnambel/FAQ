# Deploy Website ke GitHub Pages

## 🚀 Cara Deploy via Bash/Terminal

### Langkah 1: Buat Repository di GitHub

1. Buka https://github.com
2. Klik **"New"** atau **"+"** → **"New repository"**
3. Isi nama repository (contoh: `pelindo-regpro-chatbot`)
4. Pilih **"Public"** (wajib untuk GitHub Pages gratis)
5. JANGAN centang "Initialize with README" (karena kita akan upload dari lokal)
6. Klik **"Create repository"**

---

### Langkah 2: Setup Git di Folder Project

Buka terminal/bash di folder `FAQ`:

```bash
# 1. Inisialisasi git (jika belum)
git init

# 2. Tambahkan semua file
git add .

# 3. Commit pertama
git commit -m "Initial commit - Pelindo RegPro Chatbot"

# 4. Ubah branch menjadi main (jika masih master)
git branch -M main

# 5. Tambahkan remote repository GitHub
# GANTI USERNAME dan REPO_NAME sesuai repository Anda
git remote add origin https://github.com/USERNAME/REPO_NAME.git

# Contoh:
# git remote add origin https://github.com/hermo/pelindo-regpro-chatbot.git

# 6. Push ke GitHub
git push -u origin main
```

---

### Langkah 3: Aktifkan GitHub Pages

1. Buka repository di GitHub (https://github.com/USERNAME/REPO_NAME)
2. Klik tab **"Settings"** (di bagian atas)
3. Scroll down ke bagian **"Pages"** (di sidebar kiri)
4. Di bagian **"Source"**:
   - Pilih **"Deploy from a branch"**
   - Branch: pilih **`main`**
   - Folder: pilih **`/ (root)`**
5. Klik **"Save"**

---

### Langkah 4: Akses Website

Setelah beberapa menit, website akan tersedia di:

```
https://USERNAME.github.io/REPO_NAME/
```

Contoh:
```
https://hermo.github.io/pelindo-regpro-chatbot/
```

---

## 🔄 Update Website Setelah Perubahan

Setelah mengubah file, deploy ulang dengan:

```bash
# Masuk ke folder project
cd FAQ

# Tambahkan perubahan
git add .

# Commit perubahan
git commit -m "Update website"

# Push ke GitHub
git push

# GitHub Pages akan otomatis update dalam beberapa menit
```

---

## 📝 Tips Penting

### 1. Pastikan File Index Sesuai

**Opsi A: Gunakan `login.html` sebagai halaman utama**
- Rename `login.html` menjadi `index.html`
- Atau copy isi `login.html` ke `index.html`

**Opsi B: Redirect dari `index.html` ke `login.html`**
```html
<!-- Di index.html -->
<script>
    window.location.href = 'login.html';
</script>
```

### 2. Periksa Path File

Pastikan semua path relatif (tidak absolut):
- ✅ `images/logo.png` 
- ❌ `C:/Users/.../logo.png`

### 3. Nama File dengan Spasi

File `faq (1).html` sebaiknya diubah menjadi `faq.html` untuk konsistensi.

---

## 🔧 Troubleshooting

### Masalah: "repository not found" atau "fatal: remote origin already exists"

**Solusi:**
```bash
# Cek remote yang ada
git remote -v

# Jika sudah ada origin, hapus dulu
git remote remove origin

# Tambahkan lagi
git remote add origin https://github.com/USERNAME/REPO_NAME.git
```

### Masalah: Website tidak muncul

**Solusi:**
1. Pastikan repository **Public** (bukan Private)
2. Pastikan GitHub Pages sudah diaktifkan di Settings
3. Tunggu 5-10 menit (first deploy butuh waktu)
4. Refresh halaman GitHub Pages

### Masalah: Gambar tidak muncul

**Solusi:**
```bash
# Pastikan folder images ikut ter-commit
git add images/
git commit -m "Add images folder"
git push
```

---

## ⚡ Script Otomatis (Optional)

Buat file `deploy-github.sh`:

```bash
#!/bin/bash

echo "🚀 Deploy ke GitHub Pages..."

# Tambahkan semua perubahan
git add .

# Commit
read -p "Masukkan pesan commit: " message
git commit -m "$message"

# Push ke GitHub
git push

echo ""
echo "✅ Deploy selesai!"
echo "📝 Website akan update dalam beberapa menit di:"
echo "   https://USERNAME.github.io/REPO_NAME/"
```

Jalankan:
```bash
chmod +x deploy-github.sh
bash deploy-github.sh
```

---

## 📋 Checklist Sebelum Deploy

- [ ] Repository sudah dibuat di GitHub
- [ ] Repository status: **Public**
- [ ] Semua file sudah di folder project
- [ ] Folder `images/` ada dan berisi semua gambar
- [ ] Path gambar menggunakan relatif (`images/logo.png`)
- [ ] Link antar halaman sudah benar
- [ ] File `index.html` ada atau `login.html` sebagai halaman utama

---

## 🎯 Quick Start

```bash
# 1. Setup git
git init
git add .
git commit -m "Initial commit"
git branch -M main

# 2. Tambahkan remote (GANTI USERNAME dan REPO_NAME)
git remote add origin https://github.com/USERNAME/REPO_NAME.git

# 3. Push ke GitHub
git push -u origin main

# 4. Aktifkan GitHub Pages di GitHub Settings → Pages
# 5. Website tersedia di: https://USERNAME.github.io/REPO_NAME/
```

---

**Selamat deploy! 🎉**

