# Sistem Pakar Diagnosa Kesehatan Mental Berbasis Web dengan Metode Forward Chaining dan Certainty Factor

## Data Gangguan (Kesehatan Mental)

| id | jenis\_gangguan    | deskripsi                                                                                     | saran                                                                      |
| -- | ------------------ | --------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------- |
| 1  | Depresi            | Gangguan suasana hati yang menyebabkan perasaan sedih terus-menerus dan kehilangan minat.     | Istirahat cukup, konseling psikologi, tetap aktif dengan kegiatan positif. |
| 2  | Stres              | Kondisi psikologis akibat tekanan yang berlebihan baik dari pekerjaan maupun masalah pribadi. | Relaksasi, meditasi, olahraga ringan, manajemen waktu yang baik.           |
| 3  | Gangguan Kecemasan | Gangguan mental yang ditandai dengan perasaan cemas berlebihan dan sulit dikendalikan.        | Latihan pernapasan, terapi kognitif, batasi kafein dan alkohol.            |


## Data Rule

| id\_rule | id\_mental    | G001 | G002 | G003 | G004 | G005 | G006 | G007 | G008 | G009 | G010 | G011 | G012 | G013 | G014 | G015 |
| -------- | ------------- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1        | 1 (Depresi)   | 1   | 0   | 1   | 1   | 1   | 1   | 0   | 0   | 0   | 0   | 1   | 1   | 0   | 1   | 0   |
| 2        | 2 (Stres)     | 1   | 0   | 1   | 0   | 0   | 0   | 1   | 0   | 0   | 0   | 1   | 0   | 0   | 0   | 1   |
| 3        | 3 (Kecemasan) | 1   | 1   | 0   | 0   | 1   | 0   | 1   | 1   | 1   | 1   | 0   | 0   | 1   | 0   | 1   |

## Data Gejala

| Kode | Gejala                                      |
| ---- | ------------------------------------------- |
| G001  | Susah tidur                                 |
| G002  | Gangguan pernapasan                         |
| G003  | Susah bersantai karena tekanan              |
| G004  | Tidak bersemangat & merasa tidak berguna    |
| G005  | Tidak percaya diri saat orang lain bisa     |
| G006  | Kehilangan motivasi                         |
| G007  | Sulit tenang & sabar saat ada gangguan      |
| G008  | Khawatir & panik hingga malu di tempat umum |
| G009  | Gugup di hadapan publik                     |
| G010  | Cemas berlebihan tanpa alasan jelas         |
| G011  | Penurunan daya ingat                        |
| G012  | Menangis tanpa alasan jelas                 |
| G013  | Gugup pada hal yang belum terjadi           |
| G014  | Putus asa                                   |
| G015  | Mudah marah                                 |

## Data CF

| No | Gejala                                      | Depresi | Stres | Kecemasan |
| -- | ------------------------------------------- | ------- | ----- | --------- |
| 1  | Susah tidur                                 | 0.3     | 0.6   | 0.7       |
| 2  | Gangguan pernapasan                         | 0       | 0.2   | 0.9       |
| 3  | Susah bersantai karena tekanan              | 0.2     | 0.8   | 0.6       |
| 4  | Tidak bersemangat & merasa tidak berguna    | 0.9     | 0.4   | 0.2       |
| 5  | Tidak percaya diri saat orang lain bisa     | 0.8     | 0.3   | 0.7       |
| 6  | Kehilangan motivasi                         | 0.9     | 0.5   | 0.3       |
| 7  | Sulit tenang & sabar saat ada gangguan      | 0.3     | 0.7   | 0.6       |
| 8  | Khawatir & panik hingga malu di tempat umum | 0.1     | 0.2   | 0.9       |
| 9  | Gugup di hadapan publik                     | 0.1     | 0.3   | 0.9       |
| 10 | Cemas berlebihan tanpa alasan jelas         | 0.1     | 0.3   | 0.95      |
| 11 | Penurunan daya ingat                        | 0.6     | 0.5   | 0.3       |
| 12 | Menangis tanpa alasan jelas                 | 0.85    | 0.3   | 0.2       |
| 13 | Gugup pada hal yang belum terjadi           | 0.1     | 0.3   | 0.9       |
| 14 | Putus asa                                   | 0.95    | 0.4   | 0.2       |
| 15 | Mudah marah                                 | 0.4     | 0.8   | 0.5       |


### Term to use

1. Clone Repository
2. Extract File Repository
3. Membuat Database
3. Import Database
4. Sesuaikan kode pada bagian koneksi.php dengan nama database yang dibuat
