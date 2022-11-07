CREATE DATABASE fakultas;

CREATE TABLE jurusan (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    kode CHAR(4) NOT NULL,
    nama VARCHAR(50) NOT NULL
);

CREATE TABLE mahasiswa (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    id_jurusan INTEGER NOT NULL,
    nim CHAR(8) NOT NULL,
    nama VARCHAR(50) NOT NULL,
    jenis_kelamin enum('Laki-laki', 'Perempuan') NOT NULL,
    tempat_lahir VARCHAR(50) NOT NULL,
    tanggal_lahir DATE NOT NULL,
    alamat VARCHAR(255) NOT NULL,
    FOREIGN KEY (id_jurusan) REFERENCES jurusan(id)
);

-- insert jurusan
insert into jurusan (kode, nama) values  ('A024', 'Sistem Informasi');
insert into jurusan (kode, nama) values  ('B024', 'Teknologi Informasi');

-- insert mahasiswa
insert into mahasiswa (id_jurusan, nim, nama, jenis_kelamin, tempat_lahir, tanggal_lahir, alamat) 
values ('1', '20241077','Azimatul Hanafiyah','Perempuan','Bondowoso','2001-01-06','Cermee, Bondowoso');
insert into mahasiswa (id_jurusan, nim, nama, jenis_kelamin, tempat_lahir, tanggal_lahir, alamat) 
values ('1', '20242077','Lee Jeno','Laki-laki','Incheon','2000-04-23','Kwangya');

-- update mahasiswa
update mahasiswa set alamat = 'Korea selatan' where id = 2;

-- delete mahasiswa
delete from mahasiswa where id = 1;