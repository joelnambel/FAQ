# Cara Deploy Website Pelindo RegPro Chatbot

## 📋 Persiapan

Pastikan semua file ada di folder project:
- `index.html` / `login.html` (halaman utama)
- `faq (1).html` (halaman chatbot)
- `images/` (folder gambar)
- File lainnya

---

## 🚀 Metode 1: Netlify (Paling Mudah - Drag & Drop)

### Langkah-langkah:

1. **Buka website Netlify**
   - Kunjungi: https://www.netlify.com
   - Buat akun gratis (bisa login dengan GitHub/Google)

2. **Drag & Drop folder project**
   - Setelah login, di halaman dashboard
   - Cari bagian "Sites" → "Add new site" → "Deploy manually"
   - **Drag seluruh folder `FAQ`** ke area yang tersedia
   - Atau klik "Browse to upload" dan pilih folder `FAQ`

3. **Tunggu proses deploy selesai**
   - Netlify akan otomatis deploy website Anda
   - Website akan dapat diakses dengan URL seperti: `https://random-name-123.netlify.app`

4. **Ubah nama domain (opsional)**
   - Klik "Site settings" → "Change site name"
   - Ubah menjadi nama yang lebih mudah diingat
   - Contoh: `pelindo-regpro-chatbot.netlify.app`

**Keuntungan:**
- ✅ Gratis selamanya
- ✅ SSL otomatis (HTTPS)
- ✅ Deploy otomatis jika push ke GitHub
- ✅ Custom domain bisa ditambahkan

---

## 🚀 Metode 2: Vercel (Sangat Cepat)

### Langkah-langkah:

1. **Buka website Vercel**
   - Kunjungi: https://vercel.com
   - Buat akun gratis (bisa login dengan GitHub/Google)

2. **Import project**
   - Klik "Add New" → "Project"
   - Pilih "Deploy" → Upload folder `FAQ`
   - Atau hubungkan dengan GitHub repository

3. **Deploy**
   - Klik "Deploy"
   - Tunggu beberapa detik
   - Website siap dengan URL seperti: `https://pelindo-regpro.vercel.app`

**Keuntungan:**
- ✅ Gratis
- ✅ SSL otomatis
- ✅ CDN global (cepat di seluruh dunia)
- ✅ Auto-deploy dari GitHub

---

## 🚀 Metode 3: GitHub Pages

### Langkah-langkah:

1. **Buat repository di GitHub**
   - Login ke https://github.com
   - Klik "New repository"
   - Isi nama repository (contoh: `pelindo-regpro-chatbot`)
   - Pilih "Public"
   - Klik "Create repository"

2. **Upload file ke GitHub**
   ```bash
   # Buka terminal di folder project
   git init
   git add .
   git commit -m "Initial commit"
   git branch -M main
   git remote add origin https://github.com/USERNAME/pelindo-regpro-chatbot.git
   git push -u origin main
   ```
   
   Atau gunakan GitHub Desktop/GitHub web untuk upload manual

3. **Aktifkan GitHub Pages**
   - Buka repository di GitHub
   - Klik "Settings" → "Pages"
   - Di bagian "Source", pilih branch `main` dan folder `/ (root)`
   - Klik "Save"

4. **Akses website**
   - Website akan tersedia di: `https://USERNAME.github.io/pelindo-regpro-chatbot/`
   - Tunggu beberapa menit untuk proses deploy

**Keuntungan:**
- ✅ Gratis
- ✅ Terintegrasi dengan GitHub
- ✅ Cocok untuk proyek open source

---

## 🚀 Metode 4: Surge.sh (Terminal)

### Langkah-langkah:

1. **Install Surge**
   ```bash
   npm install -g surge
   ```

2. **Deploy dari folder project**
   ```bash
   cd FAQ
   surge
   ```
   
   Ikuti instruksi:
   - Masukkan email
   - Masukkan password (atau buat akun baru)
   - Tekan Enter untuk menggunakan domain default
   - Atau masukkan domain custom

3. **Website siap**
   - URL akan terlihat seperti: `https://pelindo-regpro.surge.sh`

**Keuntungan:**
- ✅ Gratis
- ✅ Sangat cepat
- ✅ Cocok untuk deployment via terminal

---

## 🚀 Metode 5: Cloudflare Pages

### Langkah-langkah:

1. **Buka Cloudflare Pages**
   - Kunjungi: https://pages.cloudflare.com
   - Login dengan akun Cloudflare (gratis)

2. **Create a project**
   - Klik "Create a project"
   - Pilih "Upload assets"
   - Upload seluruh folder `FAQ`

3. **Deploy**
   - Klik "Deploy site"
   - Website akan tersedia di: `https://pelindo-regpro.pages.dev`

**Keuntungan:**
- ✅ Gratis
- ✅ CDN global Cloudflare
- ✅ SSL otomatis
- ✅ Integrasi dengan Cloudflare

---

## 📝 Catatan Penting

### Sebelum Deploy:

1. **Periksa path file gambar**
   - Pastikan semua path gambar relatif benar
   - Contoh: `images/logo.png` (bukan `C:/Users/...`)

2. **Periksa link antar halaman**
   - Pastikan link ke `faq (1).html` atau `faq.html` benar
   - Pastikan link di `login.html` mengarah ke halaman yang benar

3. **Rekomendasi: Rename file**
   - Ganti `faq (1).html` menjadi `faq.html` untuk konsistensi
   - Atau ubah link di `login.html` agar mengarah ke file yang benar

4. **Test di browser lokal**
   - Buka `login.html` di browser
   - Test semua tombol dan link
   - Pastikan gambar muncul dengan benar

---

## 🔧 Troubleshooting

### Masalah: Gambar tidak muncul
**Solusi:**
- Pastikan folder `images/` ikut ter-upload
- Periksa path gambar (gunakan path relatif: `images/nama-file.png`)
- Pastikan nama file case-sensitive di server

### Masalah: Link tidak bekerja
**Solusi:**
- Gunakan path relatif: `faq.html` bukan `/faq.html` atau `C:/...`
- Pastikan nama file sesuai (termasuk spasi dan tanda kurung)

### Masalah: Styling tidak muncul
**Solusi:**
- Pastikan Tailwind CSS CDN ter-load (cek console browser)
- Pastikan font Google Fonts ter-load
- Clear cache browser dan coba lagi

---

## ✅ Rekomendasi

**Untuk pemula:** Gunakan **Netlify** (Metode 1) - paling mudah dengan drag & drop

**Untuk developer:** Gunakan **Vercel** atau **GitHub Pages** - lebih fleksibel dan terintegrasi dengan Git

**Yang paling cepat:** **Surge.sh** - langsung dari terminal

---

## 📞 Bantuan Tambahan

Jika mengalami kendala, pastikan:
1. Semua file lengkap (termasuk folder `images/`)
2. Tidak ada file yang terlalu besar (>100MB)
3. Koneksi internet stabil saat upload
4. Browser menggunakan HTTPS untuk test

**Selamat deploy! 🎉**

