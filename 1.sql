Create Database APLIKASIPASAR;
Use APLIKASIPASAR;

CREATE TABLE PEMILIK (
    Id INT NOT NULL,
    Nama VARCHAR(50) NOT NULL,
    Alamat VARCHAR(100) NOT NULL,
    Nik VARCHAR(16) NOT NULL,
    No_wa VARCHAR(13),
    No_telp VARCHAR(13),
    Created_by VARCHAR(50),
    Edited_by VARCHAR(50),
    Created_at DATETIME,
    Edited_at DATETIME,
    PRIMARY KEY (Id)
)