Create Database APLIKASIPASAR
Use APLIKASIPASAR
Go

CREATE TABLE PEMILIK (
    Id INT NOT NULL,
    Nama VARCHAR(50) NOT NULL,
    Alamat VARCHAR(100) NOT NULL,
    Nik VARCHAR(16) NOT NULL,
    NoWa VARCHAR(13),
    NoTelp VARCHAR(13),
    CreatedBy VARCHAR(50),
    EditedBy VARCHAR(50),
    CreatedAt DATETIME,
    EditedAt DATETIME,
    PRIMARY KEY (Id)
);

CREATE TABLE PASAR (
    Id INT NOT NULL,
    Nama VARCHAR(50) NOT NULL,
    Alamat VARCHAR(100) NOT NULL,
    KodePasar VARCHAR(5),
    CreatedBy VARCHAR(50),
    EditedBy VARCHAR(50),
    CreatedAt DATETIME,
    EditedAt DATETIME,
    PRIMARY KEY (Id)
);

CREATE TABLE RIWAYAT_IURAN(
    IdRiwayatIuran int NOT NULL,
    IdTenant int NOT NULL,
    TahunBulanIuran date,
    JmlBayar int,
    CreatedBy varchar(50),
    EditedBy varchar(50),
    CreatedAt datetime,
    EditedAt datetime,
    PRIMARY KEY(IdRiwayatIuran),
    CONSTRAINT FK_RIWAYAT_IURAN_TENANT FOREIGN KEY (IdTenant) REFERENCES TENANT(IdTenant),
);

CREATE TABLE PENGELOLA (
    Id INT NOT NULL,
    IdUser INT NOT NULL,
    IdPasar INT NOT NULL,
    CreatedBy VARCHAR(50),
    EditedBy VARCHAR(50),
    CreatedAt (DATE),
    EditedAt (DATE),
    PRIMARY KEY(id),
    CONSTRAINT FK_PENGELOLA_PASAR FOREIGN KEY (IdPasar) REFERENCES PASAR(IdPasar),
);
CREATE TABLE RIWAYAT_PEMILIKAN (
    Id INT NOT NULL,
    IdTenant INT NOT NULL,
    TglTransaksi DATE,
    IdPemilikLama INT NOT NULL,
    IdPemilikBaru INT NOT NULL,
    CreatedBy VARCHAR(50),
    EditedBy VARCHAR(50),
    CreatedAt DATETIME,
    EditedAt DATETIME,
    PRIMARY KEY (Id)
    CONSTRAINT FK_RIWAYAT_PEMILIKAN_TENANT FOREIGN KEY (IdTenant) REFERENCES TENANT(IdTenant),
    CONSTRAINT FK_RIWAYAT_PEMILIKAN_PEMILIK FOREIGN KEY (IdPemilikLama) REFERENCES PEMILIK(IdPemilik),
    CONSTRAINT FK_RIWAYAT_PEMILIKAN_PEMILIK FOREIGN KEY (IdPemilikBaru) REFERENCES PEMILIK(IdPemilik),
);
