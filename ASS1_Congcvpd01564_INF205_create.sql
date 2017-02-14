-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2017-02-13 09:11:04.355

-- tables
-- Table: CHI_TIET_HOA_DON
CREATE TABLE CHI_TIET_HOA_DON (
    Ma_HD varchar(20)  NOT NULL,
    Ma_SP varchar(20)  NOT NULL,
    So_Luong int  NULL,
    Don_Gia money  NULL,
    SAN_PHAM_Ma_SP varchar(20)  NOT NULL,
    HOA_DON_Ma_HD varchar(20)  NOT NULL,
    CONSTRAINT CHI_TIET_HOA_DON_pk PRIMARY KEY  (Ma_HD,Ma_SP)
);

-- Table: HOA_DON
CREATE TABLE HOA_DON (
    Ma_HD varchar(20)  NOT NULL,
    Ngay_lap_HD date  NULL,
    Dia_Chi varchar(50)  NOT NULL,
    KHACH_HANG_Ma_KH varchar(20)  NOT NULL,
    CONSTRAINT HOA_DON_pk PRIMARY KEY  (Ma_HD)
);

-- Table: KHACH_HANG
CREATE TABLE KHACH_HANG (
    Ma_KH varchar(20)  NOT NULL,
    Ho_Ten varchar(50)  NULL,
    Gioi_Tinh varchar(10)  NULL,
    Dien_Thoai char(11)  NULL,
    Dia_Chi varchar(50)  NOT NULL,
    CONSTRAINT KHACH_HANG_pk PRIMARY KEY  (Ma_KH)
);

-- Table: LOAI_SAN_PHAM
CREATE TABLE LOAI_SAN_PHAM (
    Ma_Loai varchar(20)  NOT NULL,
    Ten_Loai varchar(50)  NULL,
    CONSTRAINT LOAI_SAN_PHAM_pk PRIMARY KEY  (Ma_Loai)
);

-- Table: SAN_PHAM
CREATE TABLE SAN_PHAM (
    Ma_SP varchar(20)  NOT NULL,
    Ten_SP varchar(30)  NULL,
    Don_Vi_Tinh varchar(20)  NULL,
    LOAI_SAN_PHAM_Ma_Loai varchar(20)  NOT NULL,
    CONSTRAINT SAN_PHAM_pk PRIMARY KEY  (Ma_SP)
);

-- foreign keys
-- Reference: CHI_TIET_HOA_DON_HOA_DON (table: CHI_TIET_HOA_DON)
ALTER TABLE CHI_TIET_HOA_DON ADD CONSTRAINT CHI_TIET_HOA_DON_HOA_DON
    FOREIGN KEY (HOA_DON_Ma_HD)
    REFERENCES HOA_DON (Ma_HD);

-- Reference: CHI_TIET_HOA_DON_SAN_PHAM (table: CHI_TIET_HOA_DON)
ALTER TABLE CHI_TIET_HOA_DON ADD CONSTRAINT CHI_TIET_HOA_DON_SAN_PHAM
    FOREIGN KEY (SAN_PHAM_Ma_SP)
    REFERENCES SAN_PHAM (Ma_SP);

-- Reference: HOA_DON_KHACH_HANG (table: HOA_DON)
ALTER TABLE HOA_DON ADD CONSTRAINT HOA_DON_KHACH_HANG
    FOREIGN KEY (KHACH_HANG_Ma_KH)
    REFERENCES KHACH_HANG (Ma_KH);

-- Reference: SAN_PHAM_LOAI_SAN_PHAM (table: SAN_PHAM)
ALTER TABLE SAN_PHAM ADD CONSTRAINT SAN_PHAM_LOAI_SAN_PHAM
    FOREIGN KEY (LOAI_SAN_PHAM_Ma_Loai)
    REFERENCES LOAI_SAN_PHAM (Ma_Loai);

-- End of file.

