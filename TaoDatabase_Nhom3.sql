--> Tạo Database
create database CuaHangQuanAo_TTTK_Nhom3
on primary
(
	NAME = 'CuaHangQuanAo_TTTK',
	FILENAME = 'F:\HeQuanTriCoSoDuLieu\Database\CuaHangQuanAo_TTTK.mdf',
	SIZE = 200MB,
	FILEGROWTH = 20%
)
LOG ON
(
	NAME = 'CuaHangQuanAo_TTTK_log',
	FILENAME = 'F:\HeQuanTriCoSoDuLieu\Database\CuaHangQuanAo_TTTK.ldf',
	SIZE = 50MB,
	FILEGROWTH = 20%
)
use CuaHangQuanAo_TTTK_Nhom3
go
CREATE TABLE NGUOI (
    MaNguoi int IDENTITY(1,1) CONSTRAINT PK_Nguoi_MaNguoi_ID PRIMARY KEY,
    LoaiNguoi char(2) NOT NULL CHECK (LoaiNguoi IN ('NV', 'KH')),
    Ten nvarchar(50) NOT NULL,
    GioiTinh nvarchar(3) NOT NULL CHECK (UPPER(GioiTinh) IN (N'Nam', N'Nữ')),
    NgaySinh date NOT NULL,
    SDT char(12),
    DiaChi nvarchar(70),
    Email nvarchar(50),
    CONSTRAINT CK_NgaySinhNguoi CHECK (NgaySinh <= GETDATE()),
    CONSTRAINT CK_SDTNguoi CHECK (SDT LIKE '0%' OR SDT LIKE '+84%'),
    CONSTRAINT CK_EmailNguoi CHECK (Email LIKE '%@%' AND Email LIKE '%.%')
);

CREATE TABLE NHANVIEN (
    MaNV int IDENTITY(1,1) NOT NULL CONSTRAINT PK_NhanVien_MaNhanVien_ID PRIMARY KEY,
    NgayVaoLam date NOT NULL default GETDATE(),
    TaiKhoan char(50),
    ChucDanh char(2) NOT NULL CHECK (ChucDanh IN ('TN', 'NV')),
    GioNghiPhep smallint NOT NULL,
    CONSTRAINT CK_NgayVaoLam CHECK (NgayVaoLam <= GETDATE()),
    CONSTRAINT CK_GioNghiPhep CHECK (GioNghiPhep >= 0),
	CONSTRAINT FK_NhanVien_MaNV_Nguoi_MaNguoi FOREIGN KEY (MaNV) REFERENCES NGUOI(MaNguoi)
);

CREATE TABLE KHACHHANG (
  MaKH int IDENTITY(1,1) NOT NULL,
  MaNguoi int,
  LoaiKhachHang nvarchar(2) CHECK (LoaiKhachHang IN ('VL', 'TV')) NOT NULL, 
  NgayvaoTV date CHECK (NgayvaoTV <= GETDATE()), 
  DiemTichLuy int CHECK (DiemTichLuy >= 0),
  CONSTRAINT PK_KhachHang_MaKhachHang_ID PRIMARY KEY (MaKH),
  CONSTRAINT FK_KhachHang_MaNguoi_Nguoi_MaNguoi FOREIGN KEY (MaNguoi) REFERENCES NGUOI(MaNguoi)
);

CREATE TABLE NHACUNGCAP (
    MaNCC int IDENTITY(1,1) NOT NULL CONSTRAINT PK_NhaCungCap_MaNCC_ID PRIMARY KEY,
    TenNhaCungCap nvarchar(50) NOT NULL,
    SDT nvarchar(12) NOT NULL,
    DiaChi nvarchar(70) NOT NULL,
    Email nvarchar(50),
    CONSTRAINT CK_SDTNCC CHECK (SDT LIKE '0%' OR SDT LIKE '+84%'),
    CONSTRAINT CK_EmailNCC CHECK (Email LIKE '%@%' AND Email LIKE '%.%')
);

CREATE TABLE HOADONNHAP (
    MaHDNhap int IDENTITY(1,1) CONSTRAINT PK_HoaDonNhap_MaHDNhap_ID PRIMARY KEY,
    MaNCC int NOT NULL,
    MaNV int NOT NULL,
    NgayNhap datetime NOT NULL default GETDATE(),
    SoLuongMon int NOT NULL CHECK (SoLuongMon >= 0),
    TongTien money default 0 NOT NULL CHECK (TongTien >= 0.00),
	CONSTRAINT CK_NgayNhap CHECK (NgayNhap <= GETDATE()),
    CONSTRAINT FK_HoaDonNhap_MaNCC_NhaCungCap_MaNCC FOREIGN KEY (MaNCC) REFERENCES NHACUNGCAP(MaNCC),
    CONSTRAINT FK_HoaDonNhap_MaNV_NhanVien_MaNV FOREIGN KEY (MaNV) REFERENCES NHANVIEN(MaNV)
);

CREATE TABLE HOADONXUAT (
  MaHDXuat INT NOT NULL IDENTITY(1,1),
  MaKH INT NOT NULL,
  MaNV INT NOT NULL,
  NgayBan DATE DEFAULT GETDATE() NOT NULL,
  SoLuongMon INT CHECK (SoLuongMon >= 0) NOT NULL,
  TongTien MONEY DEFAULT 0.00 NOT NULL,
  CONSTRAINT PK_HoaDonXuat_MaHDXuat_ID PRIMARY KEY (MaHDXuat),
  CONSTRAINT FK_HoaDonXuat_MaKH_KhachHang_MaKH FOREIGN KEY (MaKH) REFERENCES KHACHHANG(MaKH),
  CONSTRAINT FK_HoaDonXuat_MaNV_NhanVien_MaNV FOREIGN KEY (MaNV) REFERENCES NHANVIEN(MaNV)
);

CREATE TABLE LOAISANPHAM(
	MaLoai int not null IDENTITY(1,1),
	TenLoai nvarchar(50) not null,
	constraint PK_LoaiSanPham_MaLoai_ID  primary key (MaLoai)
)

CREATE TABLE SANPHAM(
	MaSP Int not null IDENTITY(1,1) ,
	TenSP nvarchar(50) not null,
	MaNCC int not null,
	MaLoai int not null,
	KichThuoc nvarchar(10),
	MauSac nvarchar(10),
	ChatLieu nvarchar(20),
	DonGiaNhap money not null,
	DonGiaBan money not null,
	NgayNhap Date not null default (getdate()),
	CONSTRAINT PK_SanPham_MaSP_ID primary key (MaSP),
	CONSTRAINT FK_SanPham_MaNCC_NhaCungCap_MaNCC Foreign Key (MaNCC) REFERENCES NHACUNGCAP(MaNCC),
	CONSTRAINT FK_SanPham_MaLoai_LoaiSanPham_MaLoai Foreign Key (MaLoai) REFERENCES LOAISANPHAM(MaLoai)
)

create table KHUYENMAI(
	MaKM Int not null IDENTITY(1,1),
	TenKM Nvarchar(50) not null,
	MoTa Nvarchar(50),
	NgayKM Date not null,
	NgayKetThucKM Date not null,
	TongGiaTriKM Money not null default (0),
	constraint PK_KhuyenMai_MaKM_ID primary key (MaKM),
	constraint CK_NgayKTKM check (NgayKetThucKM > NgayKM and NgayKetThucKM < GETDATE()),
	constraint CK_TongGiaTriKM check (TongGiaTriKM >= 0)
)

CREATE TABLE KHOHANG(
	MaKho int not null IDENTITY(1,1) primary key,
	DienTich float not null,
	TenKho nvarchar(50),
	DiaChi nvarchar(70)
)

CREATE TABLE HANGTRONGKHO(
	MaHangTrongKho int not null IDENTITY(1,1) primary key,
	MaSP int not null,
	MaKho int not null,
	SoLuongTonKho int not null,
	CONSTRAINT MaSP_FK Foreign key (MaSP) REFERENCES SANPHAM(MaSP),
	CONSTRAINT MaKho_FK Foreign key (MaKho) REFERENCES KHOHANG(MaKho)
)

create table CHITIETKHUYENMAI(
	MaCTKM Int not null IDENTITY(1,1),
	MaKM Int not null,
	MaSP Int not null,
	LoaiKM Nvarchar(50) not null,
	MucGiam Float not null default (0),
	constraint PK_ChiTietKhuyenMai_MaCTKM_ID primary key (MaCTKM,MaKM,MaSP),
	constraint CK_MucGiam check (MucGiam >= 0 and MucGiam <=100),
	constraint FK_ChiTietKhuyenMai_MaKM_KhuyenMai_MaKM foreign key (MaKM) references KHUYENMAI(MaKM),
	constraint FK_ChiTietKhuyenMai_MaSP_SanPham_MaSP foreign key (MaSP) references SANPHAM(MaSP)
)

create table CHITIETHOADONNHAP(
	MaCTHDNhap int not null IDENTITY(1,1),
	MaHDNhap int not null,
	MaSP int not null,
	SoLuong int not null,
	DonGia money not null ,
	TienGiam money default (0) ,
	TongTinh money not null default (0), 
	check (TongTinh >= 0), 
	constraint PK_ChiTietHoaDonNhap_MaCTHDNhap_ID primary key (MaCTHDNhap, MaHDNhap, MaSP),
	constraint CK_SoLuong check (SoLuong >= 0),
	constraint CK_DonGia check (DonGia >= 0),
	constraint CK_TienGiam check (TienGiam >=0),
	constraint FK_ChiTietHoaDonNhap_MaHDNhap_HoaDonNhap_MaHDNhap foreign key (MaHDNhap) references HOADONNHAP(MaHDNhap),
	constraint FK_ChiTietHoaDonNhap_MaSP_SanPham_MaSP foreign key (MaSP) references SANPHAM(MaSP)
)
go
CREATE TRIGGER Update_TongTinhNhap
ON CHITIETHOADONNHAP
AFTER INSERT
AS
BEGIN
    UPDATE CHITIETHOADONNHAP
    SET TongTinh = (INSERTED.SoLuong * INSERTED.DonGia) - INSERTED.TienGiam
    FROM INSERTED
    WHERE CHITIETHOADONNHAP.MaCTHDNhap = INSERTED.MaCTHDNhap AND CHITIETHOADONNHAP.MaHDNhap = INSERTED.MaHDNhap;
END;
go

CREATE TABLE CHITIETHOADONXUAT (
    MaCTHDXuat INT NOT NULL IDENTITY(1,1),
    MaHDXuat INT NOT NULL,
    MaSP INT NOT NULL,
    SoLuong INT NOT NULL,
    DonGia MONEY NOT NULL CHECK (DonGia >= 0),
    TienGiam MONEY DEFAULT 0.00 CHECK (TienGiam >= 0),
    TongTinh MONEY NOT NULL DEFAULT 0.00 CHECK (TongTinh >= 0),
    CONSTRAINT PK_ChiTietHoaDonXuat_MaCTHDXuat_ID PRIMARY KEY (MaCTHDXuat,MaHDXuat,MaSP),
    CONSTRAINT FK_ChiTietHoaDonXuat_MaHDXuat_HoaDonXuat_MaHDXuat FOREIGN KEY (MaHDXuat) REFERENCES HOADONXUAT(MaHDXuat),
    CONSTRAINT FK_ChiTietHoaDonXuat_MaSP_SanPham_MaSP FOREIGN KEY (MaSP) REFERENCES SANPHAM(MaSP)
);

go
CREATE TRIGGER TriggerCheckSoLuong
ON CHITIETHOADONXUAT
AFTER INSERT
AS
BEGIN
    DECLARE @soLuongHangTrongKho INT;
    SELECT @soLuongHangTrongKho = SUM(SoLuongTonKho)
    FROM HANGTRONGKHO
    WHERE MaSP IN (SELECT MaSP FROM inserted);

    IF @soLuongHangTrongKho IS NOT NULL
    BEGIN
        DECLARE @tongSoLuongNhap INT;
        SELECT @tongSoLuongNhap = SUM(SoLuong) FROM inserted;

        IF @tongSoLuongNhap > @soLuongHangTrongKho
        BEGIN
            RAISERROR ('Số lượng vượt quá kho', 16, 1);
            ROLLBACK TRANSACTION;
        END;
    END;
END;

go
CREATE TRIGGER Update_TongTinhXuat1
ON CHITIETHOADONXuat
AFTER INSERT
AS
BEGIN
    UPDATE CHITIETHOADONXUAT
    SET TongTinh = (INSERTED.SoLuong * INSERTED.DonGia) - INSERTED.TienGiam
    FROM INSERTED
    WHERE CHITIETHOADONXUAT.MaCTHDXuat = INSERTED.MaCTHDXuat AND CHITIETHOADONXUAT.MaHDXuat = INSERTED.MaHDXuat;
END;
go

INSERT INTO NGUOI 
    (LoaiNguoi, Ten, GioiTinh, NgaySinh, SDT, DiaChi, Email)
VALUES 
    ('KH', N'Phạm Thị Thảo', N'nữ', '1987-10-20', N'0987654321', N'6666 Trần Hưng Đạo Q5 HCM', N'Thao@gmail.com'),
    ('KH', N'Lê Văn Nam', N'Nam', '1994-01-05', N'0909090909', N'7777 Nguyễn Đình Chiểu Q3 HCM', N'Nam@gmail.com'),
    ('KH', N'Nguyễn Văn Tuấn', N'Nam', '1998-08-30', N'0123456789', N'8888 Nguyễn Văn Cừ Q5 HCM', N'Tuan@gmail.com'),
    ('KH', N'Trần Thị Kim', N'nữ', '1997-12-18', N'0987654321', N'9999 Lê Văn Sỹ Q3 HCM', N'Kim@gmail.com'),
    ('KH', N'Hoàng Văn Huy', N'Nam', '1990-05-22', N'0909090909', N'1010 Lê Lợi Q1 HCM', N'Huy@gmail.com'),
    ('KH', N'Nguyễn Thị Lan', N'nữ', '1993-03-11', N'0123456789', N'1111 Nguyễn Văn Cừ Q5 HCM', N'Lan@gmail.com'),
    ('KH', N'Trần Văn Toàn', N'Nam', '1989-09-05', N'0987654321', N'1212 Lê Duẩn Q1 HCM', N'Toan@gmail.com'),
    ('KH', N'Phạm Thị Mỹ', N'nữ', '1996-06-07', N'0909090909', N'1313 Võ Văn Tần Q3 HCM', N'My@gmail.com'),
    ('KH', N'Lê Văn Sơn', N'Nam', '1986-04-28', N'0123456789', N'1414 Trần Hưng Đạo Q5 HCM', N'Son@gmail.com'),
    ('KH', N'Nguyễn Văn Minh', N'Nam', '1992-11-15', N'0987654321', N'1515 Nguyễn Trãi Q5 HCM', N'Minh@gmail.com'),
    ('KH', N'Trần Thị Lan', N'nữ', '1995-02-09', N'0909090909', N'1616 Lê Văn Sỹ Q3 HCM', N'Lan@gmail.com'),
    ('KH', N'Hoàng Văn Nghĩa', N'Nam', '1988-07-23', N'0123456789', N'1717 Trần Hưng Đạo Q5 HCM', N'Nghia@gmail.com'),
    ('KH', N'Nguyễn Thị Thúy', N'nữ', '1991-01-14', N'0987654321', N'1818 Lê Duẩn Q1 HCM', N'Thuy@gmail.com'),
    ('KH', N'Lê Văn Quang', N'Nam', '1994-04-03', N'0909090909', N'1919 Võ Văn Tần Q3 HCM', N'Quang@gmail.com'),
    ('KH', N'Phạm Văn Khánh', N'Nam', '1989-08-28', N'0123456789', N'2020 Lê Lợi Q1 HCM', N'Khanh@gmail.com'),
    ('KH', N'Nguyễn Thị Hồng', N'nữ', '1997-07-17', N'0987654321', N'2121 Nguyễn Văn Cừ Q5 HCM', N'Hong@gmail.com'),
    ('KH', N'Trần Văn Hưng', N'Nam', '1993-06-21', N'0909090909', N'2222 Lê Duẩn Q1 HCM', N'Hung@gmail.com'),
    ('KH', N'Lê Thị Thu', N'nữ', '1990-03-04', N'0123456789', N'2323 Trần Hưng Đạo Q5 HCM', N'Thu@gmail.com'),
    ('KH', N'Nguyễn Văn Lương', N'Nam', '1987-12-01', N'0987654321', N'2424 Nguyễn Trãi Q5 HCM', N'Luong@gmail.com'),
    ('KH', N'Trần Thị Cẩm', N'nữ', '1992-10-25', N'0909090909', N'2525 Lê Văn Sỹ Q3 HCM', N'Cam@gmail.com'),
    ('KH', N'Hoàng Văn Dũng', N'Nam', '1996-09-08', N'0123456789', N'2626 Trần Hưng Đạo Q5 HCM', N'Dung@gmail.com'),
    ('NV', N'Nguyễn Văn Thanh', N'Nam', '1985-08-13', N'0987654321', N'2727 Lê Lợi Q1 HCM', N'Thanh@gmail.com'),
    ('NV', N'Lê Thị Thảo', N'nữ', '1999-05-10', N'0909090909', N'2828 Nguyễn Văn Cừ Q5 HCM', N'Thao@gmail.com'),
    ('NV', N'Nguyễn Văn Bình', N'Nam', '1991-02-18', N'0123456789', N'2929 Lê Duẩn Q1 HCM', N'Binh@gmail.com'),
    ('NV', N'Trần Thị Hương', N'nữ', '1994-11-27', N'0987654321', N'3030 Võ Văn Tần Q3 HCM', N'Huong@gmail.com'),
    ('NV', N'Phạm Văn Minh', N'Nam', '1998-10-01', N'0909090909', N'3131 Lê Lợi Q1 HCM', N'Minh@gmail.com'),
    ('NV', N'Nguyễn Thị Hiền', N'nữ', '1989-07-05', N'0123456789', N'3232 Nguyễn Văn Cừ Q5 HCM', N'Hien@gmail.com'),
    ('NV', N'Trần Văn Sơn', N'Nam', '1996-04-12', N'0987654321', N'3333 Lê Duẩn Q1 HCM', N'Son@gmail.com'),
    ('NV', N'Lê Thị Mai', N'nữ', '1986-01-23', N'0909090909', N'3434 Võ Văn Tần Q3 HCM', N'Mai@gmail.com'),
    ('NV', N'Nguyễn Văn Hiếu', N'Nam', '1993-08-30', N'0123456789', N'3535 Trần Hưng Đạo Q5 HCM', N'Hieu@gmail.com'),
    ('NV', N'Trần Thị Thúy', N'nữ', '1995-07-14', N'0987654321', N'3636 Lê Văn Sỹ Q3 HCM', N'Thuy@gmail.com'),
    ('NV', N'Hoàng Văn Anh', N'Nam', '1988-06-05', N'0909090909', N'3737 Nguyễn Trãi Q5 HCM', N'Anh@gmail.com'),
    ('NV', N'Nguyễn Văn Đức', N'Nam', '1992-04-18', N'0123456789', N'3838 Lê Lợi Q1 HCM', N'Duc@gmail.com'),
    ('NV', N'Lê Thị Hồng', N'nữ', '1997-03-02', N'0987654321', N'3939 Nguyễn Văn Cừ Q5 HCM', N'Hong@gmail.com'),
    ('NV', N'Trần Văn Phú', N'Nam', '1990-12-25', N'0909090909', N'4040 Lê Duẩn Q1 HCM', N'Phu@gmail.com'),
    ('NV', N'Phạm Thị Lan', N'nữ', '1994-11-10', N'0123456789', N'4141 Võ Văn Tần Q3 HCM', N'Lan@gmail.com'),
    ('NV', N'Nguyễn Văn Thanh', N'Nam', '1986-09-18', N'0987654321', N'4242 Trần Hưng Đạo Q5 HCM', N'Thanh@gmail.com'),
    ('NV', N'Trần Thị Mỹ', N'nữ', '1991-06-07', N'0909090909', N'4343 Lê Văn Sỹ Q3 HCM', N'My@gmail.com'),
    ('NV', N'Hoàng Văn Tuấn', N'Nam', '1998-04-28', N'0123456789', N'4444 Nguyễn Trãi Q5 HCM', N'Tuan@gmail.com'),
    ('NV', N'Nguyễn Thị Nga', N'nữ', '1989-01-15', N'0987654321', N'4545 Lê Lợi Q1 HCM', N'Nga@gmail.com'),
    ('NV', N'Lê Văn Hiếu', N'Nam', '1996-08-30', N'0909090909', N'4646 Nguyễn Văn Cừ Q5 HCM', N'Hieu@gmail.com'),
    ('NV', N'Nguyễn Thị Thu', N'nữ', '1985-07-14', N'0123456789', N'4747 Lê Duẩn Q1 HCM', N'Thu@gmail.com'),
    ('NV', N'Trần Văn Thành', N'Nam', '1999-04-05', N'0987654321', N'4848 Võ Văn Tần Q3 HCM', N'Thanh@gmail.com'),
    ('NV', N'Phạm Thị Kim', N'nữ', '1990-03-18', N'0909090909', N'4949 Lê Lợi Q1 HCM', N'Kim@gmail.com'),
    ('NV', N'Lê Văn Quân', N'Nam', '1987-12-27', N'0123456789', N'5050 Nguyễn Văn Cừ Q5 HCM', N'Quan@gmail.com');


insert into KHACHHANG 
	(MaNguoi, LoaiKhachHang, NgayvaoTV, DiemTichLuy) 
values 
	(1, 'TV', '2021-03-21', 5),
	(2, 'TV', '2021-03-21', 5),
	(3, 'TV', '2021-04-02', 3),
	(4, 'TV', '2021-05-15', 2),
	(5, 'TV', '2021-06-10', 4),
	(6, 'TV', '2021-07-23', 1),
	(7, 'TV', '2021-08-11', 2),
	(8, 'TV', '2021-09-05', 1),
	(9, 'TV', '2021-10-20', 3),
	(10, 'TV', '2021-11-30', 2),
	(11, 'TV', '2021-12-25', 1),
	(12, 'TV', '2022-01-05', 3),
	(13, 'TV', '2022-02-12', 2),
	(14, 'TV', '2022-03-20', 1),
	(15, 'TV', '2022-04-08', 4),
	(16, 'TV', '2022-05-15', 1),
	(17, 'TV', '2022-02-12', 2),
	(18, 'TV', '2022-03-20', 1),
	(19, 'TV', '2022-04-08', 4),
	(20, 'TV', '2022-05-15', 1),
	(21, 'TV', '2022-02-12', 2)

insert into KHACHHANG 
	(LoaiKhachHang) 
values
	('VL'),
	('VL'),
	('VL'),
	('VL'),
	('VL'),
	('VL'),
	('VL'),
	('VL'),
	('VL'),
	('VL'),
	('VL'),
	('VL'),
	('VL'),
	('VL'),
	('VL')

SET IDENTITY_INSERT NHANVIEN on;
insert into NHANVIEN 
	(MaNV, NgayVaoLam, TaiKhoan, ChucDanh, GioNghiPhep) 
values 
	(22, '2018-12-01',N'2123132 Vietcombank', 'NV', '0'),
	(23, '2018-12-05',N'2123432 NamA', 'TN', '0'),
	(24, '2019-01-10',N'2123567 Techcombank', 'NV', '1'),
	(25, '2019-02-15',N'2123890 ACB', 'TN', '1'),
	(26, '2019-03-20',N'2123998 VietinBank', 'NV', '0'),
	(27, '2019-04-25',N'2124111 BIDV', 'TN', '1'),
	(28, '2019-05-30',N'2124222 Sacombank', 'NV', '0'),
	(29, '2019-06-05',N'2124343 VPBank', 'TN', '0'),
	(30, '2019-07-10',N'2124455 MBBank', 'NV', '1'),
	(31, '2019-08-15',N'2124567 VIB', 'TN', '0'),
	(32, '2019-09-20',N'2124678 SHB', 'NV', '1'),
	(33, '2019-10-25',N'2124789 BVB', 'TN', '1'),
	(34, '2019-11-30',N'2124890 PVcomBank', 'NV', '0'),
	(35, '2019-12-05',N'2124999 LienVietPostBank', 'TN', '0'),
	(36, '2020-01-10',N'2125101 TPBank', 'NV', '1'),
	(37, '2020-02-15',N'2125212 OceanBank', 'TN', '1'),
	(38, '2020-03-20',N'2125323 BaoVietBank', 'NV', '0'),
	(39, '2020-04-25',N'2125434 PGBank', 'TN', '1'),
	(40, '2020-05-30',N'2125545 VRB', 'NV', '0'),
	(41, '2020-06-05',N'2125656 VietCapitalBank', 'TN', '0'),
	(42, '2020-07-10',N'2125767 HSBC', 'NV', '1'),
	(43, '2020-08-15',N'2125878 DongA', 'TN', '1'),
	(44, '2020-09-20',N'2125989 SCB', 'NV', '0'),
	(45, '2020-09-20',N'2125f989 SCB', 'NV', '10')
SET IDENTITY_INSERT NHANVIEN off;

INSERT INTO NHACUNGCAP 
	(TenNhaCungCap, SDT, DiaChi, Email)
VALUES 
	(N'Xưởng may Ngọc Tú',N'0231231421',N'23 Trần Phú HCM',N'ngocTu@gmail.com'),
	(N'SNKR',N'023125421',N'23 Trần Quang Khải HCM',N'Snrks@gmail.com'),
	(N'TechGuru',N'023145678',N'45 Lê Lợi HCM',N'techguru@gmail.com'),
	(N'Fashion Trends',N'023198765',N'98 Nguyễn Huệ HCM',N'fashiontrends@gmail.com'),
	(N'Quần Áo Lụa',N'023176543',N'67 Đinh Tiên Hoàng HCM',N'quanla@gmail.com'),
	(N'Trendy Co.',N'023123499',N'99 Lý Thường Kiệt HCM',N'trendyco@gmail.com'),
	(N'Style Lab',N'023187654',N'54 Phạm Ngũ Lão HCM',N'stylelab@gmail.com'),
	(N'Chic Fashion',N'023165432',N'32 Bùi Thị Xuân HCM',N'chicfashion@gmail.com'),
	(N'Urban Outfits',N'023112345',N'12 Trần Hưng Đạo HCM',N'urbanoutfits@gmail.com'),
	(N'Couture House',N'023134567',N'78 Hai Bà Trưng HCM',N'couturehouse@gmail.com'),
	(N'Casual Wear',N'023123487',N'48 Nguyễn Du HCM',N'casualwear@gmail.com'),
	(N'Vogue Designs',N'023143289',N'89 Nguyễn Thị Minh Khai HCM',N'voguedesigns@gmail.com'),
	(N'Trendy Threads',N'023178945',N'45 Trường Định HCM',N'trendythreads@gmail.com'),
	(N'Funky Fashion',N'023155432',N'32 Nguyễn Công Trứ HCM',N'funkyfashion@gmail.com'),
	(N'Glamourous Boutique',N'023112349',N'49 Ngô Quyền HCM',N'glamourous@gmail.com'),
	(N'Style Central',N'023145678',N'78 Hàm Nghi HCM',N'stylecentral@gmail.com'),
	(N'Street Smart',N'023165478',N'78 Nguyễn Thái Học HCM',N'streetsmart@gmail.com'),
	(N'City Chic',N'023132156',N'56 Lê Thánh Tôn HCM',N'citychic@gmail.com'),
	(N'Dapper Designs',N'023178945',N'45 Trần Quốc Toản HCM',N'dapperdesigns@gmail.com'),
	(N'Fashion Avenue',N'023112389',N'89 Trần Hưng Đạo HCM',N'fashionavenue@gmail.com');

INSERT INTO LOAISANPHAM 
	(TenLoai) 
VALUES 
	(N'Áo thun'),
	(N'Quần Kaki'),
	(N'Áo Khoác'),
	(N'Áo sơ mi'),
	(N'Quần jean'),
	(N'Đầm dự tiệc'),
	(N'Áo len'),
	(N'Quần dài'),
	(N'Chân váy'),
	(N'Áo vest'),
	(N'Áo polo'),
	(N'Quần short'),
	(N'Balo túi xách'),
	(N'Giày thể thao'),
	(N'Dép xỏ ngón'),
	(N'Túi đeo chéo'),
	(N'Ví da'),
	(N'Nón snapback'),
	(N'Áo thể thao'),
	(N'Quần áo đùi'),
	(N'Bình nước'),
	(N'Mũ len'),
	(N'Kính râm'),
	(N'Dây nịt'),
	(N'Sơ mi caro'),
	(N'Quần lửng'),
	(N'Băng đô'),
	(N'Áo ba lỗ'),
	(N'Quần thể thao'),
	(N'Áo khoác');

INSERT INTO SANPHAM
	(MaNCC, MaLoai, TenSP, DonGiaNhap, DonGiaBan, NgayNhap, KichThuoc, MauSac, ChatLieu)
values 
	(1, 1,N'Áo thun SDR-R', 100000, 200000,'2020-06-21',N'S',N'Vàng',N'Với nilon'),
	(1, 3,N'Quần Kaki ABC-123', 150000, 250000,'2020-06-20',N'M',N'Xanh',N'Với dù'),
	(2, 5,N'Áo Khoác XYZ-789', 200000, 350000,'2020-06-19',N'L',N'Đen',N'Với bố'),
	(5, 7,N'Áo sơ mi LMN-456', 120000, 220000,'2020-06-18',N'XL',N'Trắng',N'Với cotton'),
	(2, 9,N'Quần jean PQR-123', 180000, 280000,'2020-06-17',N'S',N'Xanh đậm',N'Với jean'),
	(4, 11,N'Đầm dự tiệc JKL-789', 300000, 500000,'2020-06-16',N'M',N'Hồng',N'Với lụa'),
	(7, 13,N'Áo len GHI-234', 140000, 240000,'2020-06-15',N'L',N'Nâu',N'Với len'),
	(8, 15,N'Quần dài DEF-567', 160000, 260000,'2020-06-14',N'XL',N'Ghi',N'Với thun'),
	(10, 17,N'Chân váy UVW-890', 110000, 210000,'2020-06-13',N'S',N'Hồng past',N'Với chiffon'),
	(10, 19,N'Áo vest RST-123', 220000, 320000,'2020-06-12',N'M',N'Xanh navy',N'Với tweed'),
	(11, 2,N'Áo polo QWE-456', 130000, 230000,'2020-06-11',N'L',N'??',N'Với thun cotton'),
	(12, 4,N'Quần short ASD-789', 90000, 190000,'2020-06-10',N'S',N'Cam',N'Với kaki'),
	(13, 6,N'Balo túi xách FGH-234', 250000, 400000,'2020-06-09',N'M',N'Nâu da bò',N'Da tổng hợp'),
	(14, 8,N'Giày thể thao ZXC-567', 280000, 480000,'2020-06-08',N'XL',N'Trắng đen',N'Da tự nhiên'),
	(15, 10,N'Dép xỏ ngón VBN-890', 80000, 150000,'2020-06-07',N'S',N'Xanh lá',N'Nhựa'),
	(16, 12,N'Túi đeo chéo YUI-123', 120000, 220000,'2020-06-06',N'M',N'Đen',N'Với da'),
	(17, 14,N'Ví da HJK-456', 90000, 170000,'2020-06-05',N'L',N'Nâu',N'Da bò'),
	(18, 16,N'Nón snapback BNM-789', 70000, 130000,'2020-06-04',N'XL',N'Đen',N'Với khác'),
	(19, 18,N'Áo thể thao UIO-234', 110000, 210000,'2020-06-03',N'S',N'Xanh đậm',N'Với co giãn'),
	(7, 12,N'Áo thun nữ SDR-R', 120000, 220000,'2024-03-30',N'S',N'Hồng',N'Với cotton'),
	(11, 18,N'Quần jean nam ABC-123', 200000, 350000,'2024-03-29',N'M',N'Xanh đậm',N'Với jean'),
	(5, 4,N'Áo Khoác dù XYZ-789', 180000, 280000,'2024-03-28',N'L',N'Đen',N'Với dù'),
	(14, 30,N'Áo sơ mi nam LMN-456', 150000, 250000,'2024-03-27',N'XL',N'Trắng',N'Với cotton'),
	(3, 9,N'Quần Kaki nam PQR-123', 130000, 230000,'2024-03-26',N'S',N'Xanh',N'Với kaki'),
	(18, 6,N'Đầm dự tiệc nữ JKL-789', 300000, 500000,'2024-03-25',N'M',N'??',N'Với lụa'),
	(20, 15,N'Áo len nam GHI-234', 140000, 240000,'2024-03-24',N'L',N'Xám',N'Với len'),
	(9, 23,N'Quần dài nữ DEF-567', 160000, 260000,'2024-03-23',N'XL',N'Đen',N'Với thun'),
	(16, 3,N'Chân váy nữ UVW-890', 110000, 210000,'2024-03-22',N'S',N'Hồng past',N'Với chiffon'),
	(10, 19,N'Áo vest nam RST-123', 220000, 320000,'2024-03-21',N'M',N'Xanh navy',N'Với tweed'),
	(2, 10,N'Áo polo nam QWE-456', 130000, 230000,'2024-03-20',N'L',N'Cam',N'Với thun cotton'),
	(6, 16,N'Quần short nam ASD-789', 90000, 190000,'2024-03-19',N'S',N'Nâu',N'Với kaki'),
	(19, 7,N'Balo túi xách nữ FGH-234', 250000, 400000,'2024-03-18',N'M',N'Đen',N'Da tổng hợp'),
	(8, 1,N'Giày thể thao nam ZXC-567', 280000, 480000,'2024-03-17',N'XL',N'Trắng đen',N'Da tự nhiên'),
	(13, 25,N'Dép xỏ ngón nam VBN-890', 80000, 150000,'2024-03-16',N'S',N'Xanh lá',N'Nhựa'),
	(15, 28,N'Túi đeo chéo nữ YUI-123', 120000, 220000,'2024-03-15',N'M',N'Hồng',N'Với da'),
	(12, 14,N'Ví da nữ HJK-456', 90000, 170000,'2024-03-14',N'L',N'Nâu',N'Da bò'),
	(4, 21,N'Nón snapback nam BNM-789', 70000, 130000,'2024-03-13',N'XL',N'Đen',N'Với khác'),
	(1, 8,N'Áo thể thao nam UIO-234', 110000, 210000,'2024-03-12',N'S',N'Xanh đậm',N'Với co giãn'),
	(17, 2,N'Quần đùi nữ WER-567', 85000, 160000,'2024-03-11',N'M',N'Xám',N'Với thể thao'),
	(5, 13,N'Áo thun nam XCV-456', 140000, 240000,'2024-03-10',N'L',N'Hồng past',N'Với cotton'),
	(9, 29,N'Quần Kaki nữ DFG-789', 170000, 270000,'2024-03-09',N'XL',N'Xanh navy',N'Với kaki'),
	(20, 5,N'Áo Khoác nữ ZRT-123', 190000, 290000,'2024-03-08',N'S',N'Xám',N'Với dù'),
	(7, 11,N'Áo sơ mi nữ FVB-456', 160000, 260000,'2024-03-07',N'M',N'Trắng',N'Với cotton'),
	(19, 17,N'Quần jean nữ OIU-789', 150000, 250000,'2024-03-06',N'L',N'Đen',N'Với jean'),
	(11, 24,N'Đầm dự tiệc nam ZYX-123', 350000, 550000,'2024-03-05',N'S',N'??',N'Với lụa'),
	(3, 22,N'Áo len nữ NMB-456', 130000, 230000,'2024-03-04',N'M',N'Xanh',N'Với len'),
	(12, 27,N'Quần dài nam WQA-789', 170000, 270000,'2024-03-03',N'L',N'Ghi',N'Với thun');

INSERT INTO KHOHANG 
	(DienTich, TenKho, DiaChi)
values 
	(200, N'Kho Thụ Đức', N'23 Thụ Đức HCM'),
	(150, N'Kho Hoàng Cầu', N'Dường Quảng Hàm HCM'),
	(50, N'Kho Chính Thống', N'821/21 Quận 2 HCM'),
	(90, N'Kho Gò Vấp', N'12 Nguyễn Văn Bảo HCM');

INSERT INTO HOADONNHAP
	(MaNCC, MaNV, NgayNhap, SoLuongMon, TongTien) 
values 
	(1,41,'2018-01-01',3,20000000),
	(6, 41, GETDATE(), 5, 30000000),
	(14, 22, GETDATE(), 4, 25000000),
	(3, 32, GETDATE(), 6, 35000000),
	(19, 24, GETDATE(), 3, 20000000),
	(8, 45, GETDATE(), 7, 40000000),
	(17, 25, GETDATE(), 5, 32000000),
	(2, 43, GETDATE(), 8, 42000000),
	(11, 41, GETDATE(), 6, 38000000),
	(20, 43, GETDATE(), 9, 45000000),
	(10, 31, GETDATE(), 7, 38000000)

INSERT INTO CHITIETHOADONNHAP
	(MaHDNhap, MaSP, SoLuong, DonGia, TienGiam) 
values 
	(2, 19, 400, 100000,0),
	(2, 25, 200, 100000,0),
	(7, 47, 100, 100000,0),
	(5, 19, 400, 100000, 0),
	(3, 22, 200, 100000, 0),
	(5, 22, 100, 100000, 0),
	(2, 19, 5, 150000, 50000),
	(2, 20, 3, 200000, 30000),
	(2, 21, 6, 120000, 0),
	(3, 22, 7, 180000, 20000),
	(3, 23, 4, 250000, 0),
	(3, 24, 9, 300000, 0),
	(4, 25, 8, 220000, 0),
	(4, 26, 10, 200000, 0),
	(4, 27, 3, 180000, 0),
	(5, 28, 6, 240000, 0),
	(5, 29, 5, 280000, 50000),
	(5, 30, 4, 200000, 0),
	(6, 31, 9, 300000, 0),
	(6, 32, 3, 190000, 0),
	(6, 33, 5, 220000, 0),
	(7, 34, 7, 260000, 0),
	(7, 35, 4, 240000, 0),
	(7, 36, 2, 200000, 0),
	(8, 37, 8, 280000, 0),
	(8, 38, 6, 300000, 0),
	(8, 39, 3, 250000, 0),
	(9, 40, 5, 220000, 0),
	(9, 41, 3, 260000, 0),
	(9, 42, 9, 240000, 0),
	(10, 43, 4, 280000, 0),
	(10, 44, 7, 300000, 0),
	(10, 45, 5, 250000, 0),
	(7, 46, 8, 300000, 0),
	(8, 47, 6, 320000, 0),
	(10, 46, 3, 270000, 0);

INSERT INTO HANGTRONGKHO 
	(MaSP, MaKho, SoLuongTonKho)
VALUES 
	(19, 1, 100),
	(20, 2, 150),
	(21, 3, 80),
	(22, 4, 200),
	(23, 1, 120),
	(24, 2, 90),
	(25, 3, 180),
	(26, 4, 130),
	(27, 1, 110),
	(28, 2, 70);

WITH RandomData AS (
    SELECT 
        ABS(CHECKSUM(NEWID())) % 35 + 1 AS MaKH,
        ABS(CHECKSUM(NEWID())) % 24 + 22 AS MaNV,
        GETDATE() AS NgayBan,
        CASE 
            WHEN ABS(CHECKSUM(NEWID())) % 2 = 0 THEN 2
            ELSE 3
        END AS SoLuongMon,
        CAST(RAND() * 1000000 AS INT) AS TongTien
    FROM 
        sys.all_columns AS A
    CROSS JOIN 
        sys.all_columns AS B
)
INSERT INTO HOADONXUAT (MaKH, MaNV, NgayBan, SoLuongMon, TongTien)
SELECT TOP 50
    MaKH,
    MaNV,
    NgayBan,
    SoLuongMon,
    TongTien
FROM 
    RandomData;

WITH RandomData AS (
    SELECT 
        ABS(CHECKSUM(NEWID())) % 50 + 1 AS MaHDXuat, -- MaHDXuat ng?u nhiên t? 1 ??n 100
        ABS(CHECKSUM(NEWID())) % 47 + 1 AS MaSP, -- MaSP ng?u nhiên t? 19 ??n 65
        ABS(CHECKSUM(NEWID())) % 5 + 1 AS SoLuong, -- S? l??ng ng?u nhiên t? 10 ??n 50
        CAST(RAND() * 1000000 AS INT) AS DonGia, -- ??n giá ng?u nhiên t? 0 ??n 1,000,000
        CAST(RAND() * 50000 AS INT) AS TienGiam -- Ti?n gi?m ng?u nhiên t? 0 ??n 50,000
    FROM 
        sys.all_columns AS A
    CROSS JOIN 
        sys.all_columns AS B
)
INSERT INTO CHITIETHOADONXUAT (MaHDXuat, MaSP, SoLuong, DonGia, TienGiam)
SELECT TOP 50
    MaHDXuat,
    MaSP,
    SoLuong,
    DonGia,
    TienGiam
FROM 
    RandomData;

INSERT INTO KHUYENMAI 
	(TenKM, MoTa, NgayKM, NgayKetThucKM, TongGiaTriKM) 
VALUES 
    (N'Mùng Khai Trường', N'Ngày khai trường giảm giá 50%', '2012-02-01', '2012-03-04', 20000000),
    (N'Sale Mùa Hè', N'Giảm giá 30% cho các sản phẩm mùa hè', '2012-06-01', '2012-07-15', 15000000),
    (N'Black Friday', N'Ưu đãi hấp dẫn trong Black Friday', '2012-11-23', '2012-11-25', 30000000),
    (N'Hội Chợ Thế Trường', N'Giảm giá lớn nhân dịp hội chợ', '2012-04-15', '2012-04-30', 25000000),
    (N'Sản Hàng Rẻ', N'Sản phẩm giảm giá từ 10-50%', '2012-09-01', '2012-09-30', 18000000),
    (N'Back to School', N'Khuyến mãi đặc biệt dành cho học sinh, sinh viên', '2012-08-01', '2012-09-15', 22000000),
    (N'Chào Mừng Xuân Mới', N'Ưu đãi đón chào năm mới', '2012-01-20', '2012-02-10', 18000000),
    (N'Tháng Của Phụ Nữ', N'Quà tặng ý nghĩa dành cho phái đẹp', '2012-03-08', '2012-03-10', 15000000),
    (N'Giảm Giá Cuối Năm', N'Giảm giá cực sức cuối năm', '2012-12-01', '2012-12-31', 35000000),
    (N'Sinh Nhật Cửa Hàng', N'Chương trình ưu đãi dành cho khách hàng thân thiết', '2012-05-01', '2012-05-07', 25000000);

INSERT INTO CHITIETKHUYENMAI 
	(MaKM, MaSP, LoaiKM, MucGiam) 
VALUES 
    (1, 19, N'Mùng Khai Trường', 50),
    (2, 20, N'Mùng Khai Trường', 50),
    (3, 21, N'Mùng Khai Trường', 50),
    (4, 22, N'Mùng Khai Trường', 50),
    (5, 23, N'Mùng Khai Trường', 50),
    (6, 24, N'Mùng Khai Trường', 50),
    (7, 25, N'Mùng Khai Trường', 50),
    (8, 26, N'Mùng Khai Trường', 50),
    (9, 27, N'Mùng Khai Trường', 50),
    (10, 28, N'Mùng Khai Trường', 50),
    (1, 29, N'Sale Mùa Hè', 30),
    (2, 30, N'Sale Mùa Hè', 30),
    (3, 31, N'Sale Mùa Hè', 30),
    (4, 32, N'Sale Mùa Hè', 30),
    (5, 33, N'Sale Mùa Hè', 30),
    (6, 34, N'Sale Mùa Hè', 30),
    (7, 35, N'Sale Mùa Hè', 30),
    (8, 36, N'Sale Mùa Hè', 30),
    (9, 37, N'Sale Mùa Hè', 30),
    (10, 38, N'Sale Mùa Hè', 30),
    (1, 39, N'Black Friday', 40),
    (2, 40, N'Black Friday', 40),
    (3, 41, N'Black Friday', 40),
    (4, 42, N'Black Friday', 40),
    (5, 43, N'Black Friday', 40),
    (6, 44, N'Black Friday', 40),
    (7, 45, N'Black Friday', 40),
    (8, 46, N'Black Friday', 40),
    (9, 47, N'Black Friday', 40),
    (10, 43, N'Black Friday', 40),
    (1, 44, N'Hội Chợ Thế Trường', 25),
    (2, 1, N'Hội Chợ Thế Trường', 25),
    (3, 23, N'Hội Chợ Thế Trường', 25),
    (4, 23, N'Hội Chợ Thế Trường', 25),
    (5, 45, N'Hội Chợ Thế Trường', 25),
    (6, 6, N'Hội Chợ Thế Trường', 25),
    (7, 2, N'Hội Chợ Thế Trường', 25),
    (8, 47, N'Hội Chợ Thế Trường', 25),
    (9, 1, N'Hội Chợ Thế Trường', 25),
    (10, 1, N'Hội Chợ Thế Trường', 25);




