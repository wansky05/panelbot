# Menggunakan Node.js versi 24 berbasis Alpine agar ukuran image tetap kecil
FROM node:24-alpine

# Menentukan folder kerja di dalam container
WORKDIR /app

# Menyalin package.json dan package-lock.json terlebih dahulu
COPY package*.json ./

# Menginstall dependensi proyek (hanya production agar efisien)
RUN npm install

# Menyalin seluruh sisa kode proyek ke dalam container
COPY . .

# Menginformasikan port yang digunakan
EXPOSE 3000

# Menjalankan aplikasi
CMD ["npm", "start"]
