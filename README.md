# H1D023039 Tugas 6

## Data Diri

* *Nama:* Alfan Fauzan Ridlo
* *NIM:* H1D023039 
* *Shift Baru:* B 
* *Shift Asal:* C 

## Video Demo Aplikasi 
![Tugas6-ezgif com-video-to-gif-converter](https://github.com/user-attachments/assets/24da02c9-f936-4e6a-b67e-aa4c9e5d266c)

## Penjelasan Alur Data
1. Di form_data.dart, tiga TextEditingController digunakan untuk mengambil teks yang diinput oleh pengguna pada setiap TextField.
2. Ketika tombol "Simpan" ditekan, fungsi _kirimData() dijalankan untuk memanggil Navigator.push dan berpindah ke halaman TampilData.

3. Data berupa nama, NIM, dan tahun yang diambil dari controller dikirimkan ke halaman TampilData melalui constructor widget tersebut.

4. Di tampil_data.dart, widget TampilData yang merupakan StatelessWidget memiliki variabel final untuk nama, NIM, dan tahun lahir yang wajib diisi melalui constructor.

5. Data yang diterima digunakan untuk menghitung umur dan kemudian ditampilkan pada halaman menggunakan body dari widget Scaffold.
