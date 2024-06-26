USE [master]
GO
/****** Object:  Database [CuaHangQuanAo_TTTK_Nhom3]    Script Date: 4/5/2024 7:36:02 AM ******/
CREATE DATABASE [CuaHangQuanAo_TTTK_Nhom3]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CuaHangQuanAo_TTTK', FILENAME = N'F:\HeQuanTriCoSoDuLieu\Database\CuaHangQuanAo_TTTK.mdf' , SIZE = 204800KB , MAXSIZE = UNLIMITED, FILEGROWTH = 20%)
 LOG ON 
( NAME = N'CuaHangQuanAo_TTTK_log', FILENAME = N'F:\HeQuanTriCoSoDuLieu\Database\CuaHangQuanAo_TTTK.ldf' , SIZE = 51200KB , MAXSIZE = 2048GB , FILEGROWTH = 20%)
GO
ALTER DATABASE [CuaHangQuanAo_TTTK_Nhom3] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CuaHangQuanAo_TTTK_Nhom3].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CuaHangQuanAo_TTTK_Nhom3] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CuaHangQuanAo_TTTK_Nhom3] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CuaHangQuanAo_TTTK_Nhom3] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CuaHangQuanAo_TTTK_Nhom3] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CuaHangQuanAo_TTTK_Nhom3] SET ARITHABORT OFF 
GO
ALTER DATABASE [CuaHangQuanAo_TTTK_Nhom3] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CuaHangQuanAo_TTTK_Nhom3] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [CuaHangQuanAo_TTTK_Nhom3] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CuaHangQuanAo_TTTK_Nhom3] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CuaHangQuanAo_TTTK_Nhom3] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CuaHangQuanAo_TTTK_Nhom3] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CuaHangQuanAo_TTTK_Nhom3] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CuaHangQuanAo_TTTK_Nhom3] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CuaHangQuanAo_TTTK_Nhom3] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CuaHangQuanAo_TTTK_Nhom3] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CuaHangQuanAo_TTTK_Nhom3] SET  ENABLE_BROKER 
GO
ALTER DATABASE [CuaHangQuanAo_TTTK_Nhom3] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CuaHangQuanAo_TTTK_Nhom3] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CuaHangQuanAo_TTTK_Nhom3] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CuaHangQuanAo_TTTK_Nhom3] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CuaHangQuanAo_TTTK_Nhom3] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CuaHangQuanAo_TTTK_Nhom3] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CuaHangQuanAo_TTTK_Nhom3] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CuaHangQuanAo_TTTK_Nhom3] SET RECOVERY FULL 
GO
ALTER DATABASE [CuaHangQuanAo_TTTK_Nhom3] SET  MULTI_USER 
GO
ALTER DATABASE [CuaHangQuanAo_TTTK_Nhom3] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CuaHangQuanAo_TTTK_Nhom3] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CuaHangQuanAo_TTTK_Nhom3] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CuaHangQuanAo_TTTK_Nhom3] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'CuaHangQuanAo_TTTK_Nhom3', N'ON'
GO
USE [CuaHangQuanAo_TTTK_Nhom3]
GO
/****** Object:  Table [dbo].[CHITIETHOADONNHAP]    Script Date: 4/5/2024 7:36:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETHOADONNHAP](
	[MaCTHDNhap] [int] IDENTITY(1,1) NOT NULL,
	[MaHDNhap] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonGia] [money] NOT NULL,
	[TienGiam] [money] NULL,
	[TongTinh] [money] NOT NULL,
 CONSTRAINT [PK_ChiTietHoaDonNhap_MaCTHDNhap_ID] PRIMARY KEY CLUSTERED 
(
	[MaCTHDNhap] ASC,
	[MaHDNhap] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CHITIETHOADONXUAT]    Script Date: 4/5/2024 7:36:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETHOADONXUAT](
	[MaCTHDXuat] [int] IDENTITY(1,1) NOT NULL,
	[MaHDXuat] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonGia] [money] NOT NULL,
	[TienGiam] [money] NULL,
	[TongTinh] [money] NOT NULL,
 CONSTRAINT [PK_ChiTietHoaDonXuat_MaCTHDXuat_ID] PRIMARY KEY CLUSTERED 
(
	[MaCTHDXuat] ASC,
	[MaHDXuat] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CHITIETKHUYENMAI]    Script Date: 4/5/2024 7:36:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETKHUYENMAI](
	[MaCTKM] [int] IDENTITY(1,1) NOT NULL,
	[MaKM] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[LoaiKM] [nvarchar](50) NOT NULL,
	[MucGiam] [float] NOT NULL,
 CONSTRAINT [PK_ChiTietKhuyenMai_MaCTKM_ID] PRIMARY KEY CLUSTERED 
(
	[MaCTKM] ASC,
	[MaKM] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HANGTRONGKHO]    Script Date: 4/5/2024 7:36:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HANGTRONGKHO](
	[MaHangTrongKho] [int] IDENTITY(1,1) NOT NULL,
	[MaSP] [int] NOT NULL,
	[MaKho] [int] NOT NULL,
	[SoLuongTonKho] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHangTrongKho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HOADONNHAP]    Script Date: 4/5/2024 7:36:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADONNHAP](
	[MaHDNhap] [int] IDENTITY(1,1) NOT NULL,
	[MaNCC] [int] NOT NULL,
	[MaNV] [int] NOT NULL,
	[NgayNhap] [datetime] NOT NULL,
	[SoLuongMon] [int] NOT NULL,
	[TongTien] [money] NOT NULL,
 CONSTRAINT [PK_HoaDonNhap_MaHDNhap_ID] PRIMARY KEY CLUSTERED 
(
	[MaHDNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HOADONXUAT]    Script Date: 4/5/2024 7:36:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADONXUAT](
	[MaHDXuat] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NOT NULL,
	[MaNV] [int] NOT NULL,
	[NgayBan] [date] NOT NULL,
	[SoLuongMon] [int] NOT NULL,
	[TongTien] [money] NOT NULL,
 CONSTRAINT [PK_HoaDonXuat_MaHDXuat_ID] PRIMARY KEY CLUSTERED 
(
	[MaHDXuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 4/5/2024 7:36:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[MaNguoi] [int] NULL,
	[LoaiKhachHang] [nvarchar](2) NOT NULL,
	[NgayvaoTV] [date] NULL,
	[DiemTichLuy] [int] NULL,
 CONSTRAINT [PK_KhachHang_MaKhachHang_ID] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KHOHANG]    Script Date: 4/5/2024 7:36:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHOHANG](
	[MaKho] [int] IDENTITY(1,1) NOT NULL,
	[DienTich] [float] NOT NULL,
	[TenKho] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](70) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KHUYENMAI]    Script Date: 4/5/2024 7:36:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHUYENMAI](
	[MaKM] [int] IDENTITY(1,1) NOT NULL,
	[TenKM] [nvarchar](50) NOT NULL,
	[MoTa] [nvarchar](50) NULL,
	[NgayKM] [date] NOT NULL,
	[NgayKetThucKM] [date] NOT NULL,
	[TongGiaTriKM] [money] NOT NULL,
 CONSTRAINT [PK_KhuyenMai_MaKM_ID] PRIMARY KEY CLUSTERED 
(
	[MaKM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LOAISANPHAM]    Script Date: 4/5/2024 7:36:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAISANPHAM](
	[MaLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LoaiSanPham_MaLoai_ID] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NGUOI]    Script Date: 4/5/2024 7:36:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NGUOI](
	[MaNguoi] [int] IDENTITY(1,1) NOT NULL,
	[LoaiNguoi] [char](2) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[GioiTinh] [nvarchar](3) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[SDT] [char](12) NULL,
	[DiaChi] [nvarchar](70) NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_Nguoi_MaNguoi_ID] PRIMARY KEY CLUSTERED 
(
	[MaNguoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NHACUNGCAP]    Script Date: 4/5/2024 7:36:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHACUNGCAP](
	[MaNCC] [int] IDENTITY(1,1) NOT NULL,
	[TenNhaCungCap] [nvarchar](50) NOT NULL,
	[SDT] [nvarchar](12) NOT NULL,
	[DiaChi] [nvarchar](70) NOT NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhaCungCap_MaNCC_ID] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 4/5/2024 7:36:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[NgayVaoLam] [date] NOT NULL,
	[TaiKhoan] [char](50) NULL,
	[ChucDanh] [char](2) NOT NULL,
	[GioNghiPhep] [smallint] NOT NULL,
 CONSTRAINT [PK_NhanVien_MaNhanVien_ID] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 4/5/2024 7:36:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](50) NOT NULL,
	[MaNCC] [int] NOT NULL,
	[MaLoai] [int] NOT NULL,
	[KichThuoc] [nvarchar](10) NULL,
	[MauSac] [nvarchar](10) NULL,
	[ChatLieu] [nvarchar](20) NULL,
	[DonGiaNhap] [money] NOT NULL,
	[DonGiaBan] [money] NOT NULL,
	[NgayNhap] [date] NOT NULL,
 CONSTRAINT [PK_SanPham_MaSP_ID] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[CHITIETHOADONNHAP] ON 

INSERT [dbo].[CHITIETHOADONNHAP] ([MaCTHDNhap], [MaHDNhap], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (1, 2, 19, 400, 100000.0000, 0.0000, 40000000.0000)
INSERT [dbo].[CHITIETHOADONNHAP] ([MaCTHDNhap], [MaHDNhap], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (2, 2, 25, 200, 100000.0000, 0.0000, 20000000.0000)
INSERT [dbo].[CHITIETHOADONNHAP] ([MaCTHDNhap], [MaHDNhap], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (3, 7, 47, 100, 100000.0000, 0.0000, 10000000.0000)
INSERT [dbo].[CHITIETHOADONNHAP] ([MaCTHDNhap], [MaHDNhap], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (4, 5, 19, 400, 100000.0000, 0.0000, 40000000.0000)
INSERT [dbo].[CHITIETHOADONNHAP] ([MaCTHDNhap], [MaHDNhap], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (5, 3, 22, 200, 100000.0000, 0.0000, 20000000.0000)
INSERT [dbo].[CHITIETHOADONNHAP] ([MaCTHDNhap], [MaHDNhap], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (6, 5, 22, 100, 100000.0000, 0.0000, 10000000.0000)
INSERT [dbo].[CHITIETHOADONNHAP] ([MaCTHDNhap], [MaHDNhap], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (7, 2, 19, 5, 150000.0000, 50000.0000, 700000.0000)
INSERT [dbo].[CHITIETHOADONNHAP] ([MaCTHDNhap], [MaHDNhap], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (8, 2, 20, 3, 200000.0000, 30000.0000, 570000.0000)
INSERT [dbo].[CHITIETHOADONNHAP] ([MaCTHDNhap], [MaHDNhap], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (9, 2, 21, 6, 120000.0000, 0.0000, 720000.0000)
INSERT [dbo].[CHITIETHOADONNHAP] ([MaCTHDNhap], [MaHDNhap], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (10, 3, 22, 7, 180000.0000, 20000.0000, 1240000.0000)
INSERT [dbo].[CHITIETHOADONNHAP] ([MaCTHDNhap], [MaHDNhap], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (11, 3, 23, 4, 250000.0000, 0.0000, 1000000.0000)
INSERT [dbo].[CHITIETHOADONNHAP] ([MaCTHDNhap], [MaHDNhap], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (12, 3, 24, 9, 300000.0000, 0.0000, 2700000.0000)
INSERT [dbo].[CHITIETHOADONNHAP] ([MaCTHDNhap], [MaHDNhap], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (13, 4, 25, 8, 220000.0000, 0.0000, 1760000.0000)
INSERT [dbo].[CHITIETHOADONNHAP] ([MaCTHDNhap], [MaHDNhap], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (14, 4, 26, 10, 200000.0000, 0.0000, 2000000.0000)
INSERT [dbo].[CHITIETHOADONNHAP] ([MaCTHDNhap], [MaHDNhap], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (15, 4, 27, 3, 180000.0000, 0.0000, 540000.0000)
INSERT [dbo].[CHITIETHOADONNHAP] ([MaCTHDNhap], [MaHDNhap], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (16, 5, 28, 6, 240000.0000, 0.0000, 1440000.0000)
INSERT [dbo].[CHITIETHOADONNHAP] ([MaCTHDNhap], [MaHDNhap], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (17, 5, 29, 5, 280000.0000, 50000.0000, 1350000.0000)
INSERT [dbo].[CHITIETHOADONNHAP] ([MaCTHDNhap], [MaHDNhap], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (18, 5, 30, 4, 200000.0000, 0.0000, 800000.0000)
INSERT [dbo].[CHITIETHOADONNHAP] ([MaCTHDNhap], [MaHDNhap], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (19, 6, 31, 9, 300000.0000, 0.0000, 2700000.0000)
INSERT [dbo].[CHITIETHOADONNHAP] ([MaCTHDNhap], [MaHDNhap], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (20, 6, 32, 3, 190000.0000, 0.0000, 570000.0000)
INSERT [dbo].[CHITIETHOADONNHAP] ([MaCTHDNhap], [MaHDNhap], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (21, 6, 33, 5, 220000.0000, 0.0000, 1100000.0000)
INSERT [dbo].[CHITIETHOADONNHAP] ([MaCTHDNhap], [MaHDNhap], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (22, 7, 34, 7, 260000.0000, 0.0000, 1820000.0000)
INSERT [dbo].[CHITIETHOADONNHAP] ([MaCTHDNhap], [MaHDNhap], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (23, 7, 35, 4, 240000.0000, 0.0000, 960000.0000)
INSERT [dbo].[CHITIETHOADONNHAP] ([MaCTHDNhap], [MaHDNhap], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (24, 7, 36, 2, 200000.0000, 0.0000, 400000.0000)
INSERT [dbo].[CHITIETHOADONNHAP] ([MaCTHDNhap], [MaHDNhap], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (25, 8, 37, 8, 280000.0000, 0.0000, 2240000.0000)
INSERT [dbo].[CHITIETHOADONNHAP] ([MaCTHDNhap], [MaHDNhap], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (26, 8, 38, 6, 300000.0000, 0.0000, 1800000.0000)
INSERT [dbo].[CHITIETHOADONNHAP] ([MaCTHDNhap], [MaHDNhap], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (27, 8, 39, 3, 250000.0000, 0.0000, 750000.0000)
INSERT [dbo].[CHITIETHOADONNHAP] ([MaCTHDNhap], [MaHDNhap], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (28, 9, 40, 5, 220000.0000, 0.0000, 1100000.0000)
INSERT [dbo].[CHITIETHOADONNHAP] ([MaCTHDNhap], [MaHDNhap], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (29, 9, 41, 3, 260000.0000, 0.0000, 780000.0000)
INSERT [dbo].[CHITIETHOADONNHAP] ([MaCTHDNhap], [MaHDNhap], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (30, 9, 42, 9, 240000.0000, 0.0000, 2160000.0000)
INSERT [dbo].[CHITIETHOADONNHAP] ([MaCTHDNhap], [MaHDNhap], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (31, 10, 43, 4, 280000.0000, 0.0000, 1120000.0000)
INSERT [dbo].[CHITIETHOADONNHAP] ([MaCTHDNhap], [MaHDNhap], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (32, 10, 44, 7, 300000.0000, 0.0000, 2100000.0000)
INSERT [dbo].[CHITIETHOADONNHAP] ([MaCTHDNhap], [MaHDNhap], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (33, 10, 45, 5, 250000.0000, 0.0000, 1250000.0000)
INSERT [dbo].[CHITIETHOADONNHAP] ([MaCTHDNhap], [MaHDNhap], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (34, 7, 46, 8, 300000.0000, 0.0000, 2400000.0000)
INSERT [dbo].[CHITIETHOADONNHAP] ([MaCTHDNhap], [MaHDNhap], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (35, 8, 47, 6, 320000.0000, 0.0000, 1920000.0000)
INSERT [dbo].[CHITIETHOADONNHAP] ([MaCTHDNhap], [MaHDNhap], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (36, 10, 46, 3, 270000.0000, 0.0000, 810000.0000)
SET IDENTITY_INSERT [dbo].[CHITIETHOADONNHAP] OFF
SET IDENTITY_INSERT [dbo].[CHITIETHOADONXUAT] ON 

INSERT [dbo].[CHITIETHOADONXUAT] ([MaCTHDXuat], [MaHDXuat], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (1, 19, 5, 5, 480066.0000, 2884.0000, 2397446.0000)
INSERT [dbo].[CHITIETHOADONXUAT] ([MaCTHDXuat], [MaHDXuat], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (2, 17, 41, 3, 480066.0000, 2884.0000, 1437314.0000)
INSERT [dbo].[CHITIETHOADONXUAT] ([MaCTHDXuat], [MaHDXuat], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (3, 2, 32, 1, 480066.0000, 2884.0000, 477182.0000)
INSERT [dbo].[CHITIETHOADONXUAT] ([MaCTHDXuat], [MaHDXuat], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (4, 10, 19, 4, 480066.0000, 2884.0000, 1917380.0000)
INSERT [dbo].[CHITIETHOADONXUAT] ([MaCTHDXuat], [MaHDXuat], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (5, 17, 24, 1, 480066.0000, 2884.0000, 477182.0000)
INSERT [dbo].[CHITIETHOADONXUAT] ([MaCTHDXuat], [MaHDXuat], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (6, 8, 24, 2, 480066.0000, 2884.0000, 957248.0000)
INSERT [dbo].[CHITIETHOADONXUAT] ([MaCTHDXuat], [MaHDXuat], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (7, 38, 8, 5, 480066.0000, 2884.0000, 2397446.0000)
INSERT [dbo].[CHITIETHOADONXUAT] ([MaCTHDXuat], [MaHDXuat], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (8, 23, 26, 1, 480066.0000, 2884.0000, 477182.0000)
INSERT [dbo].[CHITIETHOADONXUAT] ([MaCTHDXuat], [MaHDXuat], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (9, 50, 27, 5, 480066.0000, 2884.0000, 2397446.0000)
INSERT [dbo].[CHITIETHOADONXUAT] ([MaCTHDXuat], [MaHDXuat], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (10, 29, 6, 2, 480066.0000, 2884.0000, 957248.0000)
INSERT [dbo].[CHITIETHOADONXUAT] ([MaCTHDXuat], [MaHDXuat], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (11, 49, 37, 3, 480066.0000, 2884.0000, 1437314.0000)
INSERT [dbo].[CHITIETHOADONXUAT] ([MaCTHDXuat], [MaHDXuat], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (12, 31, 14, 5, 480066.0000, 2884.0000, 2397446.0000)
INSERT [dbo].[CHITIETHOADONXUAT] ([MaCTHDXuat], [MaHDXuat], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (13, 9, 37, 5, 480066.0000, 2884.0000, 2397446.0000)
INSERT [dbo].[CHITIETHOADONXUAT] ([MaCTHDXuat], [MaHDXuat], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (14, 47, 5, 3, 480066.0000, 2884.0000, 1437314.0000)
INSERT [dbo].[CHITIETHOADONXUAT] ([MaCTHDXuat], [MaHDXuat], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (15, 8, 35, 3, 480066.0000, 2884.0000, 1437314.0000)
INSERT [dbo].[CHITIETHOADONXUAT] ([MaCTHDXuat], [MaHDXuat], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (16, 31, 12, 3, 480066.0000, 2884.0000, 1437314.0000)
INSERT [dbo].[CHITIETHOADONXUAT] ([MaCTHDXuat], [MaHDXuat], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (17, 32, 10, 5, 480066.0000, 2884.0000, 2397446.0000)
INSERT [dbo].[CHITIETHOADONXUAT] ([MaCTHDXuat], [MaHDXuat], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (18, 43, 31, 3, 480066.0000, 2884.0000, 1437314.0000)
INSERT [dbo].[CHITIETHOADONXUAT] ([MaCTHDXuat], [MaHDXuat], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (19, 15, 21, 3, 480066.0000, 2884.0000, 1437314.0000)
INSERT [dbo].[CHITIETHOADONXUAT] ([MaCTHDXuat], [MaHDXuat], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (20, 23, 37, 1, 480066.0000, 2884.0000, 477182.0000)
INSERT [dbo].[CHITIETHOADONXUAT] ([MaCTHDXuat], [MaHDXuat], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (21, 42, 27, 5, 480066.0000, 2884.0000, 2397446.0000)
INSERT [dbo].[CHITIETHOADONXUAT] ([MaCTHDXuat], [MaHDXuat], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (22, 2, 4, 1, 480066.0000, 2884.0000, 477182.0000)
INSERT [dbo].[CHITIETHOADONXUAT] ([MaCTHDXuat], [MaHDXuat], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (23, 2, 24, 3, 480066.0000, 2884.0000, 1437314.0000)
INSERT [dbo].[CHITIETHOADONXUAT] ([MaCTHDXuat], [MaHDXuat], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (24, 39, 25, 3, 480066.0000, 2884.0000, 1437314.0000)
INSERT [dbo].[CHITIETHOADONXUAT] ([MaCTHDXuat], [MaHDXuat], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (25, 20, 47, 2, 480066.0000, 2884.0000, 957248.0000)
INSERT [dbo].[CHITIETHOADONXUAT] ([MaCTHDXuat], [MaHDXuat], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (26, 50, 2, 4, 480066.0000, 2884.0000, 1917380.0000)
INSERT [dbo].[CHITIETHOADONXUAT] ([MaCTHDXuat], [MaHDXuat], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (27, 10, 29, 5, 480066.0000, 2884.0000, 2397446.0000)
INSERT [dbo].[CHITIETHOADONXUAT] ([MaCTHDXuat], [MaHDXuat], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (28, 3, 26, 1, 480066.0000, 2884.0000, 477182.0000)
INSERT [dbo].[CHITIETHOADONXUAT] ([MaCTHDXuat], [MaHDXuat], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (29, 21, 40, 4, 480066.0000, 2884.0000, 1917380.0000)
INSERT [dbo].[CHITIETHOADONXUAT] ([MaCTHDXuat], [MaHDXuat], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (30, 2, 36, 3, 480066.0000, 2884.0000, 1437314.0000)
INSERT [dbo].[CHITIETHOADONXUAT] ([MaCTHDXuat], [MaHDXuat], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (31, 34, 26, 3, 480066.0000, 2884.0000, 1437314.0000)
INSERT [dbo].[CHITIETHOADONXUAT] ([MaCTHDXuat], [MaHDXuat], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (32, 25, 15, 5, 480066.0000, 2884.0000, 2397446.0000)
INSERT [dbo].[CHITIETHOADONXUAT] ([MaCTHDXuat], [MaHDXuat], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (33, 27, 7, 5, 480066.0000, 2884.0000, 2397446.0000)
INSERT [dbo].[CHITIETHOADONXUAT] ([MaCTHDXuat], [MaHDXuat], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (34, 14, 12, 1, 480066.0000, 2884.0000, 477182.0000)
INSERT [dbo].[CHITIETHOADONXUAT] ([MaCTHDXuat], [MaHDXuat], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (35, 38, 40, 1, 480066.0000, 2884.0000, 477182.0000)
INSERT [dbo].[CHITIETHOADONXUAT] ([MaCTHDXuat], [MaHDXuat], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (36, 32, 21, 4, 480066.0000, 2884.0000, 1917380.0000)
INSERT [dbo].[CHITIETHOADONXUAT] ([MaCTHDXuat], [MaHDXuat], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (37, 30, 14, 2, 480066.0000, 2884.0000, 957248.0000)
INSERT [dbo].[CHITIETHOADONXUAT] ([MaCTHDXuat], [MaHDXuat], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (38, 16, 27, 5, 480066.0000, 2884.0000, 2397446.0000)
INSERT [dbo].[CHITIETHOADONXUAT] ([MaCTHDXuat], [MaHDXuat], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (39, 25, 21, 3, 480066.0000, 2884.0000, 1437314.0000)
INSERT [dbo].[CHITIETHOADONXUAT] ([MaCTHDXuat], [MaHDXuat], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (40, 23, 32, 4, 480066.0000, 2884.0000, 1917380.0000)
INSERT [dbo].[CHITIETHOADONXUAT] ([MaCTHDXuat], [MaHDXuat], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (41, 45, 29, 3, 480066.0000, 2884.0000, 1437314.0000)
INSERT [dbo].[CHITIETHOADONXUAT] ([MaCTHDXuat], [MaHDXuat], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (42, 11, 31, 3, 480066.0000, 2884.0000, 1437314.0000)
INSERT [dbo].[CHITIETHOADONXUAT] ([MaCTHDXuat], [MaHDXuat], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (43, 15, 44, 4, 480066.0000, 2884.0000, 1917380.0000)
INSERT [dbo].[CHITIETHOADONXUAT] ([MaCTHDXuat], [MaHDXuat], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (44, 37, 26, 2, 480066.0000, 2884.0000, 957248.0000)
INSERT [dbo].[CHITIETHOADONXUAT] ([MaCTHDXuat], [MaHDXuat], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (45, 6, 5, 3, 480066.0000, 2884.0000, 1437314.0000)
INSERT [dbo].[CHITIETHOADONXUAT] ([MaCTHDXuat], [MaHDXuat], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (46, 7, 8, 4, 480066.0000, 2884.0000, 1917380.0000)
INSERT [dbo].[CHITIETHOADONXUAT] ([MaCTHDXuat], [MaHDXuat], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (47, 18, 32, 2, 480066.0000, 2884.0000, 957248.0000)
INSERT [dbo].[CHITIETHOADONXUAT] ([MaCTHDXuat], [MaHDXuat], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (48, 42, 29, 4, 480066.0000, 2884.0000, 1917380.0000)
INSERT [dbo].[CHITIETHOADONXUAT] ([MaCTHDXuat], [MaHDXuat], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (49, 10, 21, 4, 480066.0000, 2884.0000, 1917380.0000)
INSERT [dbo].[CHITIETHOADONXUAT] ([MaCTHDXuat], [MaHDXuat], [MaSP], [SoLuong], [DonGia], [TienGiam], [TongTinh]) VALUES (50, 17, 19, 2, 480066.0000, 2884.0000, 957248.0000)
SET IDENTITY_INSERT [dbo].[CHITIETHOADONXUAT] OFF
SET IDENTITY_INSERT [dbo].[CHITIETKHUYENMAI] ON 

INSERT [dbo].[CHITIETKHUYENMAI] ([MaCTKM], [MaKM], [MaSP], [LoaiKM], [MucGiam]) VALUES (1, 1, 19, N'Mùng Khai Trường', 50)
INSERT [dbo].[CHITIETKHUYENMAI] ([MaCTKM], [MaKM], [MaSP], [LoaiKM], [MucGiam]) VALUES (2, 2, 20, N'Mùng Khai Trường', 50)
INSERT [dbo].[CHITIETKHUYENMAI] ([MaCTKM], [MaKM], [MaSP], [LoaiKM], [MucGiam]) VALUES (3, 3, 21, N'Mùng Khai Trường', 50)
INSERT [dbo].[CHITIETKHUYENMAI] ([MaCTKM], [MaKM], [MaSP], [LoaiKM], [MucGiam]) VALUES (4, 4, 22, N'Mùng Khai Trường', 50)
INSERT [dbo].[CHITIETKHUYENMAI] ([MaCTKM], [MaKM], [MaSP], [LoaiKM], [MucGiam]) VALUES (5, 5, 23, N'Mùng Khai Trường', 50)
INSERT [dbo].[CHITIETKHUYENMAI] ([MaCTKM], [MaKM], [MaSP], [LoaiKM], [MucGiam]) VALUES (6, 6, 24, N'Mùng Khai Trường', 50)
INSERT [dbo].[CHITIETKHUYENMAI] ([MaCTKM], [MaKM], [MaSP], [LoaiKM], [MucGiam]) VALUES (7, 7, 25, N'Mùng Khai Trường', 50)
INSERT [dbo].[CHITIETKHUYENMAI] ([MaCTKM], [MaKM], [MaSP], [LoaiKM], [MucGiam]) VALUES (8, 8, 26, N'Mùng Khai Trường', 50)
INSERT [dbo].[CHITIETKHUYENMAI] ([MaCTKM], [MaKM], [MaSP], [LoaiKM], [MucGiam]) VALUES (9, 9, 27, N'Mùng Khai Trường', 50)
INSERT [dbo].[CHITIETKHUYENMAI] ([MaCTKM], [MaKM], [MaSP], [LoaiKM], [MucGiam]) VALUES (10, 10, 28, N'Mùng Khai Trường', 50)
INSERT [dbo].[CHITIETKHUYENMAI] ([MaCTKM], [MaKM], [MaSP], [LoaiKM], [MucGiam]) VALUES (11, 1, 29, N'Sale Mùa Hè', 30)
INSERT [dbo].[CHITIETKHUYENMAI] ([MaCTKM], [MaKM], [MaSP], [LoaiKM], [MucGiam]) VALUES (12, 2, 30, N'Sale Mùa Hè', 30)
INSERT [dbo].[CHITIETKHUYENMAI] ([MaCTKM], [MaKM], [MaSP], [LoaiKM], [MucGiam]) VALUES (13, 3, 31, N'Sale Mùa Hè', 30)
INSERT [dbo].[CHITIETKHUYENMAI] ([MaCTKM], [MaKM], [MaSP], [LoaiKM], [MucGiam]) VALUES (14, 4, 32, N'Sale Mùa Hè', 30)
INSERT [dbo].[CHITIETKHUYENMAI] ([MaCTKM], [MaKM], [MaSP], [LoaiKM], [MucGiam]) VALUES (15, 5, 33, N'Sale Mùa Hè', 30)
INSERT [dbo].[CHITIETKHUYENMAI] ([MaCTKM], [MaKM], [MaSP], [LoaiKM], [MucGiam]) VALUES (16, 6, 34, N'Sale Mùa Hè', 30)
INSERT [dbo].[CHITIETKHUYENMAI] ([MaCTKM], [MaKM], [MaSP], [LoaiKM], [MucGiam]) VALUES (17, 7, 35, N'Sale Mùa Hè', 30)
INSERT [dbo].[CHITIETKHUYENMAI] ([MaCTKM], [MaKM], [MaSP], [LoaiKM], [MucGiam]) VALUES (18, 8, 36, N'Sale Mùa Hè', 30)
INSERT [dbo].[CHITIETKHUYENMAI] ([MaCTKM], [MaKM], [MaSP], [LoaiKM], [MucGiam]) VALUES (19, 9, 37, N'Sale Mùa Hè', 30)
INSERT [dbo].[CHITIETKHUYENMAI] ([MaCTKM], [MaKM], [MaSP], [LoaiKM], [MucGiam]) VALUES (20, 10, 38, N'Sale Mùa Hè', 30)
INSERT [dbo].[CHITIETKHUYENMAI] ([MaCTKM], [MaKM], [MaSP], [LoaiKM], [MucGiam]) VALUES (21, 1, 39, N'Black Friday', 40)
INSERT [dbo].[CHITIETKHUYENMAI] ([MaCTKM], [MaKM], [MaSP], [LoaiKM], [MucGiam]) VALUES (22, 2, 40, N'Black Friday', 40)
INSERT [dbo].[CHITIETKHUYENMAI] ([MaCTKM], [MaKM], [MaSP], [LoaiKM], [MucGiam]) VALUES (23, 3, 41, N'Black Friday', 40)
INSERT [dbo].[CHITIETKHUYENMAI] ([MaCTKM], [MaKM], [MaSP], [LoaiKM], [MucGiam]) VALUES (24, 4, 42, N'Black Friday', 40)
INSERT [dbo].[CHITIETKHUYENMAI] ([MaCTKM], [MaKM], [MaSP], [LoaiKM], [MucGiam]) VALUES (25, 5, 43, N'Black Friday', 40)
INSERT [dbo].[CHITIETKHUYENMAI] ([MaCTKM], [MaKM], [MaSP], [LoaiKM], [MucGiam]) VALUES (26, 6, 44, N'Black Friday', 40)
INSERT [dbo].[CHITIETKHUYENMAI] ([MaCTKM], [MaKM], [MaSP], [LoaiKM], [MucGiam]) VALUES (27, 7, 45, N'Black Friday', 40)
INSERT [dbo].[CHITIETKHUYENMAI] ([MaCTKM], [MaKM], [MaSP], [LoaiKM], [MucGiam]) VALUES (28, 8, 46, N'Black Friday', 40)
INSERT [dbo].[CHITIETKHUYENMAI] ([MaCTKM], [MaKM], [MaSP], [LoaiKM], [MucGiam]) VALUES (29, 9, 47, N'Black Friday', 40)
INSERT [dbo].[CHITIETKHUYENMAI] ([MaCTKM], [MaKM], [MaSP], [LoaiKM], [MucGiam]) VALUES (30, 10, 43, N'Black Friday', 40)
INSERT [dbo].[CHITIETKHUYENMAI] ([MaCTKM], [MaKM], [MaSP], [LoaiKM], [MucGiam]) VALUES (31, 1, 44, N'Hội Chợ Thế Trường', 25)
INSERT [dbo].[CHITIETKHUYENMAI] ([MaCTKM], [MaKM], [MaSP], [LoaiKM], [MucGiam]) VALUES (32, 2, 1, N'Hội Chợ Thế Trường', 25)
INSERT [dbo].[CHITIETKHUYENMAI] ([MaCTKM], [MaKM], [MaSP], [LoaiKM], [MucGiam]) VALUES (33, 3, 23, N'Hội Chợ Thế Trường', 25)
INSERT [dbo].[CHITIETKHUYENMAI] ([MaCTKM], [MaKM], [MaSP], [LoaiKM], [MucGiam]) VALUES (34, 4, 23, N'Hội Chợ Thế Trường', 25)
INSERT [dbo].[CHITIETKHUYENMAI] ([MaCTKM], [MaKM], [MaSP], [LoaiKM], [MucGiam]) VALUES (35, 5, 45, N'Hội Chợ Thế Trường', 25)
INSERT [dbo].[CHITIETKHUYENMAI] ([MaCTKM], [MaKM], [MaSP], [LoaiKM], [MucGiam]) VALUES (36, 6, 6, N'Hội Chợ Thế Trường', 25)
INSERT [dbo].[CHITIETKHUYENMAI] ([MaCTKM], [MaKM], [MaSP], [LoaiKM], [MucGiam]) VALUES (37, 7, 2, N'Hội Chợ Thế Trường', 25)
INSERT [dbo].[CHITIETKHUYENMAI] ([MaCTKM], [MaKM], [MaSP], [LoaiKM], [MucGiam]) VALUES (38, 8, 47, N'Hội Chợ Thế Trường', 25)
INSERT [dbo].[CHITIETKHUYENMAI] ([MaCTKM], [MaKM], [MaSP], [LoaiKM], [MucGiam]) VALUES (39, 9, 1, N'Hội Chợ Thế Trường', 25)
INSERT [dbo].[CHITIETKHUYENMAI] ([MaCTKM], [MaKM], [MaSP], [LoaiKM], [MucGiam]) VALUES (40, 10, 1, N'Hội Chợ Thế Trường', 25)
SET IDENTITY_INSERT [dbo].[CHITIETKHUYENMAI] OFF
SET IDENTITY_INSERT [dbo].[HANGTRONGKHO] ON 

INSERT [dbo].[HANGTRONGKHO] ([MaHangTrongKho], [MaSP], [MaKho], [SoLuongTonKho]) VALUES (1, 19, 1, 100)
INSERT [dbo].[HANGTRONGKHO] ([MaHangTrongKho], [MaSP], [MaKho], [SoLuongTonKho]) VALUES (2, 20, 2, 150)
INSERT [dbo].[HANGTRONGKHO] ([MaHangTrongKho], [MaSP], [MaKho], [SoLuongTonKho]) VALUES (3, 21, 3, 80)
INSERT [dbo].[HANGTRONGKHO] ([MaHangTrongKho], [MaSP], [MaKho], [SoLuongTonKho]) VALUES (4, 22, 4, 200)
INSERT [dbo].[HANGTRONGKHO] ([MaHangTrongKho], [MaSP], [MaKho], [SoLuongTonKho]) VALUES (5, 23, 1, 120)
INSERT [dbo].[HANGTRONGKHO] ([MaHangTrongKho], [MaSP], [MaKho], [SoLuongTonKho]) VALUES (6, 24, 2, 90)
INSERT [dbo].[HANGTRONGKHO] ([MaHangTrongKho], [MaSP], [MaKho], [SoLuongTonKho]) VALUES (7, 25, 3, 180)
INSERT [dbo].[HANGTRONGKHO] ([MaHangTrongKho], [MaSP], [MaKho], [SoLuongTonKho]) VALUES (8, 26, 4, 130)
INSERT [dbo].[HANGTRONGKHO] ([MaHangTrongKho], [MaSP], [MaKho], [SoLuongTonKho]) VALUES (9, 27, 1, 110)
INSERT [dbo].[HANGTRONGKHO] ([MaHangTrongKho], [MaSP], [MaKho], [SoLuongTonKho]) VALUES (10, 28, 2, 70)
SET IDENTITY_INSERT [dbo].[HANGTRONGKHO] OFF
SET IDENTITY_INSERT [dbo].[HOADONNHAP] ON 

INSERT [dbo].[HOADONNHAP] ([MaHDNhap], [MaNCC], [MaNV], [NgayNhap], [SoLuongMon], [TongTien]) VALUES (1, 1, 41, CAST(0x0000A85B00000000 AS DateTime), 3, 20000000.0000)
INSERT [dbo].[HOADONNHAP] ([MaHDNhap], [MaNCC], [MaNV], [NgayNhap], [SoLuongMon], [TongTien]) VALUES (2, 6, 41, CAST(0x0000B149007CBAF3 AS DateTime), 5, 30000000.0000)
INSERT [dbo].[HOADONNHAP] ([MaHDNhap], [MaNCC], [MaNV], [NgayNhap], [SoLuongMon], [TongTien]) VALUES (3, 14, 22, CAST(0x0000B149007CBAF3 AS DateTime), 4, 25000000.0000)
INSERT [dbo].[HOADONNHAP] ([MaHDNhap], [MaNCC], [MaNV], [NgayNhap], [SoLuongMon], [TongTien]) VALUES (4, 3, 32, CAST(0x0000B149007CBAF3 AS DateTime), 6, 35000000.0000)
INSERT [dbo].[HOADONNHAP] ([MaHDNhap], [MaNCC], [MaNV], [NgayNhap], [SoLuongMon], [TongTien]) VALUES (5, 19, 24, CAST(0x0000B149007CBAF3 AS DateTime), 3, 20000000.0000)
INSERT [dbo].[HOADONNHAP] ([MaHDNhap], [MaNCC], [MaNV], [NgayNhap], [SoLuongMon], [TongTien]) VALUES (6, 8, 45, CAST(0x0000B149007CBAF3 AS DateTime), 7, 40000000.0000)
INSERT [dbo].[HOADONNHAP] ([MaHDNhap], [MaNCC], [MaNV], [NgayNhap], [SoLuongMon], [TongTien]) VALUES (7, 17, 25, CAST(0x0000B149007CBAF3 AS DateTime), 5, 32000000.0000)
INSERT [dbo].[HOADONNHAP] ([MaHDNhap], [MaNCC], [MaNV], [NgayNhap], [SoLuongMon], [TongTien]) VALUES (8, 2, 43, CAST(0x0000B149007CBAF3 AS DateTime), 8, 42000000.0000)
INSERT [dbo].[HOADONNHAP] ([MaHDNhap], [MaNCC], [MaNV], [NgayNhap], [SoLuongMon], [TongTien]) VALUES (9, 11, 41, CAST(0x0000B149007CBAF3 AS DateTime), 6, 38000000.0000)
INSERT [dbo].[HOADONNHAP] ([MaHDNhap], [MaNCC], [MaNV], [NgayNhap], [SoLuongMon], [TongTien]) VALUES (10, 20, 43, CAST(0x0000B149007CBAF3 AS DateTime), 9, 45000000.0000)
INSERT [dbo].[HOADONNHAP] ([MaHDNhap], [MaNCC], [MaNV], [NgayNhap], [SoLuongMon], [TongTien]) VALUES (11, 10, 31, CAST(0x0000B149007CBAF3 AS DateTime), 7, 38000000.0000)
SET IDENTITY_INSERT [dbo].[HOADONNHAP] OFF
SET IDENTITY_INSERT [dbo].[HOADONXUAT] ON 

INSERT [dbo].[HOADONXUAT] ([MaHDXuat], [MaKH], [MaNV], [NgayBan], [SoLuongMon], [TongTien]) VALUES (1, 15, 22, CAST(0xA4460B00 AS Date), 3, 426067.0000)
INSERT [dbo].[HOADONXUAT] ([MaHDXuat], [MaKH], [MaNV], [NgayBan], [SoLuongMon], [TongTien]) VALUES (2, 16, 42, CAST(0xA4460B00 AS Date), 3, 426067.0000)
INSERT [dbo].[HOADONXUAT] ([MaHDXuat], [MaKH], [MaNV], [NgayBan], [SoLuongMon], [TongTien]) VALUES (3, 28, 28, CAST(0xA4460B00 AS Date), 3, 426067.0000)
INSERT [dbo].[HOADONXUAT] ([MaHDXuat], [MaKH], [MaNV], [NgayBan], [SoLuongMon], [TongTien]) VALUES (4, 3, 26, CAST(0xA4460B00 AS Date), 2, 426067.0000)
INSERT [dbo].[HOADONXUAT] ([MaHDXuat], [MaKH], [MaNV], [NgayBan], [SoLuongMon], [TongTien]) VALUES (5, 12, 32, CAST(0xA4460B00 AS Date), 3, 426067.0000)
INSERT [dbo].[HOADONXUAT] ([MaHDXuat], [MaKH], [MaNV], [NgayBan], [SoLuongMon], [TongTien]) VALUES (6, 24, 24, CAST(0xA4460B00 AS Date), 2, 426067.0000)
INSERT [dbo].[HOADONXUAT] ([MaHDXuat], [MaKH], [MaNV], [NgayBan], [SoLuongMon], [TongTien]) VALUES (7, 6, 29, CAST(0xA4460B00 AS Date), 3, 426067.0000)
INSERT [dbo].[HOADONXUAT] ([MaHDXuat], [MaKH], [MaNV], [NgayBan], [SoLuongMon], [TongTien]) VALUES (8, 22, 36, CAST(0xA4460B00 AS Date), 3, 426067.0000)
INSERT [dbo].[HOADONXUAT] ([MaHDXuat], [MaKH], [MaNV], [NgayBan], [SoLuongMon], [TongTien]) VALUES (9, 14, 33, CAST(0xA4460B00 AS Date), 2, 426067.0000)
INSERT [dbo].[HOADONXUAT] ([MaHDXuat], [MaKH], [MaNV], [NgayBan], [SoLuongMon], [TongTien]) VALUES (10, 20, 27, CAST(0xA4460B00 AS Date), 3, 426067.0000)
INSERT [dbo].[HOADONXUAT] ([MaHDXuat], [MaKH], [MaNV], [NgayBan], [SoLuongMon], [TongTien]) VALUES (11, 12, 33, CAST(0xA4460B00 AS Date), 3, 426067.0000)
INSERT [dbo].[HOADONXUAT] ([MaHDXuat], [MaKH], [MaNV], [NgayBan], [SoLuongMon], [TongTien]) VALUES (12, 35, 26, CAST(0xA4460B00 AS Date), 3, 426067.0000)
INSERT [dbo].[HOADONXUAT] ([MaHDXuat], [MaKH], [MaNV], [NgayBan], [SoLuongMon], [TongTien]) VALUES (13, 21, 32, CAST(0xA4460B00 AS Date), 2, 426067.0000)
INSERT [dbo].[HOADONXUAT] ([MaHDXuat], [MaKH], [MaNV], [NgayBan], [SoLuongMon], [TongTien]) VALUES (14, 28, 30, CAST(0xA4460B00 AS Date), 3, 426067.0000)
INSERT [dbo].[HOADONXUAT] ([MaHDXuat], [MaKH], [MaNV], [NgayBan], [SoLuongMon], [TongTien]) VALUES (15, 30, 42, CAST(0xA4460B00 AS Date), 2, 426067.0000)
INSERT [dbo].[HOADONXUAT] ([MaHDXuat], [MaKH], [MaNV], [NgayBan], [SoLuongMon], [TongTien]) VALUES (16, 4, 25, CAST(0xA4460B00 AS Date), 3, 426067.0000)
INSERT [dbo].[HOADONXUAT] ([MaHDXuat], [MaKH], [MaNV], [NgayBan], [SoLuongMon], [TongTien]) VALUES (17, 12, 35, CAST(0xA4460B00 AS Date), 2, 426067.0000)
INSERT [dbo].[HOADONXUAT] ([MaHDXuat], [MaKH], [MaNV], [NgayBan], [SoLuongMon], [TongTien]) VALUES (18, 30, 27, CAST(0xA4460B00 AS Date), 3, 426067.0000)
INSERT [dbo].[HOADONXUAT] ([MaHDXuat], [MaKH], [MaNV], [NgayBan], [SoLuongMon], [TongTien]) VALUES (19, 25, 39, CAST(0xA4460B00 AS Date), 2, 426067.0000)
INSERT [dbo].[HOADONXUAT] ([MaHDXuat], [MaKH], [MaNV], [NgayBan], [SoLuongMon], [TongTien]) VALUES (20, 6, 35, CAST(0xA4460B00 AS Date), 3, 426067.0000)
INSERT [dbo].[HOADONXUAT] ([MaHDXuat], [MaKH], [MaNV], [NgayBan], [SoLuongMon], [TongTien]) VALUES (21, 27, 45, CAST(0xA4460B00 AS Date), 3, 426067.0000)
INSERT [dbo].[HOADONXUAT] ([MaHDXuat], [MaKH], [MaNV], [NgayBan], [SoLuongMon], [TongTien]) VALUES (22, 1, 33, CAST(0xA4460B00 AS Date), 3, 426067.0000)
INSERT [dbo].[HOADONXUAT] ([MaHDXuat], [MaKH], [MaNV], [NgayBan], [SoLuongMon], [TongTien]) VALUES (23, 4, 35, CAST(0xA4460B00 AS Date), 3, 426067.0000)
INSERT [dbo].[HOADONXUAT] ([MaHDXuat], [MaKH], [MaNV], [NgayBan], [SoLuongMon], [TongTien]) VALUES (24, 34, 35, CAST(0xA4460B00 AS Date), 2, 426067.0000)
INSERT [dbo].[HOADONXUAT] ([MaHDXuat], [MaKH], [MaNV], [NgayBan], [SoLuongMon], [TongTien]) VALUES (25, 5, 30, CAST(0xA4460B00 AS Date), 3, 426067.0000)
INSERT [dbo].[HOADONXUAT] ([MaHDXuat], [MaKH], [MaNV], [NgayBan], [SoLuongMon], [TongTien]) VALUES (26, 8, 38, CAST(0xA4460B00 AS Date), 3, 426067.0000)
INSERT [dbo].[HOADONXUAT] ([MaHDXuat], [MaKH], [MaNV], [NgayBan], [SoLuongMon], [TongTien]) VALUES (27, 9, 24, CAST(0xA4460B00 AS Date), 2, 426067.0000)
INSERT [dbo].[HOADONXUAT] ([MaHDXuat], [MaKH], [MaNV], [NgayBan], [SoLuongMon], [TongTien]) VALUES (28, 16, 26, CAST(0xA4460B00 AS Date), 3, 426067.0000)
INSERT [dbo].[HOADONXUAT] ([MaHDXuat], [MaKH], [MaNV], [NgayBan], [SoLuongMon], [TongTien]) VALUES (29, 22, 44, CAST(0xA4460B00 AS Date), 2, 426067.0000)
INSERT [dbo].[HOADONXUAT] ([MaHDXuat], [MaKH], [MaNV], [NgayBan], [SoLuongMon], [TongTien]) VALUES (30, 16, 22, CAST(0xA4460B00 AS Date), 3, 426067.0000)
INSERT [dbo].[HOADONXUAT] ([MaHDXuat], [MaKH], [MaNV], [NgayBan], [SoLuongMon], [TongTien]) VALUES (31, 28, 27, CAST(0xA4460B00 AS Date), 3, 426067.0000)
INSERT [dbo].[HOADONXUAT] ([MaHDXuat], [MaKH], [MaNV], [NgayBan], [SoLuongMon], [TongTien]) VALUES (32, 17, 34, CAST(0xA4460B00 AS Date), 3, 426067.0000)
INSERT [dbo].[HOADONXUAT] ([MaHDXuat], [MaKH], [MaNV], [NgayBan], [SoLuongMon], [TongTien]) VALUES (33, 16, 35, CAST(0xA4460B00 AS Date), 2, 426067.0000)
INSERT [dbo].[HOADONXUAT] ([MaHDXuat], [MaKH], [MaNV], [NgayBan], [SoLuongMon], [TongTien]) VALUES (34, 13, 30, CAST(0xA4460B00 AS Date), 2, 426067.0000)
INSERT [dbo].[HOADONXUAT] ([MaHDXuat], [MaKH], [MaNV], [NgayBan], [SoLuongMon], [TongTien]) VALUES (35, 6, 23, CAST(0xA4460B00 AS Date), 3, 426067.0000)
INSERT [dbo].[HOADONXUAT] ([MaHDXuat], [MaKH], [MaNV], [NgayBan], [SoLuongMon], [TongTien]) VALUES (36, 5, 33, CAST(0xA4460B00 AS Date), 3, 426067.0000)
INSERT [dbo].[HOADONXUAT] ([MaHDXuat], [MaKH], [MaNV], [NgayBan], [SoLuongMon], [TongTien]) VALUES (37, 31, 27, CAST(0xA4460B00 AS Date), 2, 426067.0000)
INSERT [dbo].[HOADONXUAT] ([MaHDXuat], [MaKH], [MaNV], [NgayBan], [SoLuongMon], [TongTien]) VALUES (38, 12, 22, CAST(0xA4460B00 AS Date), 3, 426067.0000)
INSERT [dbo].[HOADONXUAT] ([MaHDXuat], [MaKH], [MaNV], [NgayBan], [SoLuongMon], [TongTien]) VALUES (39, 20, 39, CAST(0xA4460B00 AS Date), 2, 426067.0000)
INSERT [dbo].[HOADONXUAT] ([MaHDXuat], [MaKH], [MaNV], [NgayBan], [SoLuongMon], [TongTien]) VALUES (40, 7, 33, CAST(0xA4460B00 AS Date), 3, 426067.0000)
INSERT [dbo].[HOADONXUAT] ([MaHDXuat], [MaKH], [MaNV], [NgayBan], [SoLuongMon], [TongTien]) VALUES (41, 31, 24, CAST(0xA4460B00 AS Date), 3, 426067.0000)
INSERT [dbo].[HOADONXUAT] ([MaHDXuat], [MaKH], [MaNV], [NgayBan], [SoLuongMon], [TongTien]) VALUES (42, 12, 24, CAST(0xA4460B00 AS Date), 2, 426067.0000)
INSERT [dbo].[HOADONXUAT] ([MaHDXuat], [MaKH], [MaNV], [NgayBan], [SoLuongMon], [TongTien]) VALUES (43, 5, 23, CAST(0xA4460B00 AS Date), 2, 426067.0000)
INSERT [dbo].[HOADONXUAT] ([MaHDXuat], [MaKH], [MaNV], [NgayBan], [SoLuongMon], [TongTien]) VALUES (44, 30, 32, CAST(0xA4460B00 AS Date), 3, 426067.0000)
INSERT [dbo].[HOADONXUAT] ([MaHDXuat], [MaKH], [MaNV], [NgayBan], [SoLuongMon], [TongTien]) VALUES (45, 29, 30, CAST(0xA4460B00 AS Date), 3, 426067.0000)
INSERT [dbo].[HOADONXUAT] ([MaHDXuat], [MaKH], [MaNV], [NgayBan], [SoLuongMon], [TongTien]) VALUES (46, 27, 35, CAST(0xA4460B00 AS Date), 3, 426067.0000)
INSERT [dbo].[HOADONXUAT] ([MaHDXuat], [MaKH], [MaNV], [NgayBan], [SoLuongMon], [TongTien]) VALUES (47, 13, 22, CAST(0xA4460B00 AS Date), 3, 426067.0000)
INSERT [dbo].[HOADONXUAT] ([MaHDXuat], [MaKH], [MaNV], [NgayBan], [SoLuongMon], [TongTien]) VALUES (48, 29, 36, CAST(0xA4460B00 AS Date), 3, 426067.0000)
INSERT [dbo].[HOADONXUAT] ([MaHDXuat], [MaKH], [MaNV], [NgayBan], [SoLuongMon], [TongTien]) VALUES (49, 26, 22, CAST(0xA4460B00 AS Date), 2, 426067.0000)
INSERT [dbo].[HOADONXUAT] ([MaHDXuat], [MaKH], [MaNV], [NgayBan], [SoLuongMon], [TongTien]) VALUES (50, 2, 35, CAST(0xA4460B00 AS Date), 3, 426067.0000)
SET IDENTITY_INSERT [dbo].[HOADONXUAT] OFF
SET IDENTITY_INSERT [dbo].[KHACHHANG] ON 

INSERT [dbo].[KHACHHANG] ([MaKH], [MaNguoi], [LoaiKhachHang], [NgayvaoTV], [DiemTichLuy]) VALUES (1, 1, N'TV', CAST(0x4D420B00 AS Date), 5)
INSERT [dbo].[KHACHHANG] ([MaKH], [MaNguoi], [LoaiKhachHang], [NgayvaoTV], [DiemTichLuy]) VALUES (2, 2, N'TV', CAST(0x4D420B00 AS Date), 5)
INSERT [dbo].[KHACHHANG] ([MaKH], [MaNguoi], [LoaiKhachHang], [NgayvaoTV], [DiemTichLuy]) VALUES (3, 3, N'TV', CAST(0x59420B00 AS Date), 3)
INSERT [dbo].[KHACHHANG] ([MaKH], [MaNguoi], [LoaiKhachHang], [NgayvaoTV], [DiemTichLuy]) VALUES (4, 4, N'TV', CAST(0x84420B00 AS Date), 2)
INSERT [dbo].[KHACHHANG] ([MaKH], [MaNguoi], [LoaiKhachHang], [NgayvaoTV], [DiemTichLuy]) VALUES (5, 5, N'TV', CAST(0x9E420B00 AS Date), 4)
INSERT [dbo].[KHACHHANG] ([MaKH], [MaNguoi], [LoaiKhachHang], [NgayvaoTV], [DiemTichLuy]) VALUES (6, 6, N'TV', CAST(0xC9420B00 AS Date), 1)
INSERT [dbo].[KHACHHANG] ([MaKH], [MaNguoi], [LoaiKhachHang], [NgayvaoTV], [DiemTichLuy]) VALUES (7, 7, N'TV', CAST(0xDC420B00 AS Date), 2)
INSERT [dbo].[KHACHHANG] ([MaKH], [MaNguoi], [LoaiKhachHang], [NgayvaoTV], [DiemTichLuy]) VALUES (8, 8, N'TV', CAST(0xF5420B00 AS Date), 1)
INSERT [dbo].[KHACHHANG] ([MaKH], [MaNguoi], [LoaiKhachHang], [NgayvaoTV], [DiemTichLuy]) VALUES (9, 9, N'TV', CAST(0x22430B00 AS Date), 3)
INSERT [dbo].[KHACHHANG] ([MaKH], [MaNguoi], [LoaiKhachHang], [NgayvaoTV], [DiemTichLuy]) VALUES (10, 10, N'TV', CAST(0x4B430B00 AS Date), 2)
INSERT [dbo].[KHACHHANG] ([MaKH], [MaNguoi], [LoaiKhachHang], [NgayvaoTV], [DiemTichLuy]) VALUES (11, 11, N'TV', CAST(0x64430B00 AS Date), 1)
INSERT [dbo].[KHACHHANG] ([MaKH], [MaNguoi], [LoaiKhachHang], [NgayvaoTV], [DiemTichLuy]) VALUES (12, 12, N'TV', CAST(0x6F430B00 AS Date), 3)
INSERT [dbo].[KHACHHANG] ([MaKH], [MaNguoi], [LoaiKhachHang], [NgayvaoTV], [DiemTichLuy]) VALUES (13, 13, N'TV', CAST(0x95430B00 AS Date), 2)
INSERT [dbo].[KHACHHANG] ([MaKH], [MaNguoi], [LoaiKhachHang], [NgayvaoTV], [DiemTichLuy]) VALUES (14, 14, N'TV', CAST(0xB9430B00 AS Date), 1)
INSERT [dbo].[KHACHHANG] ([MaKH], [MaNguoi], [LoaiKhachHang], [NgayvaoTV], [DiemTichLuy]) VALUES (15, 15, N'TV', CAST(0xCC430B00 AS Date), 4)
INSERT [dbo].[KHACHHANG] ([MaKH], [MaNguoi], [LoaiKhachHang], [NgayvaoTV], [DiemTichLuy]) VALUES (16, 16, N'TV', CAST(0xF1430B00 AS Date), 1)
INSERT [dbo].[KHACHHANG] ([MaKH], [MaNguoi], [LoaiKhachHang], [NgayvaoTV], [DiemTichLuy]) VALUES (17, 17, N'TV', CAST(0x95430B00 AS Date), 2)
INSERT [dbo].[KHACHHANG] ([MaKH], [MaNguoi], [LoaiKhachHang], [NgayvaoTV], [DiemTichLuy]) VALUES (18, 18, N'TV', CAST(0xB9430B00 AS Date), 1)
INSERT [dbo].[KHACHHANG] ([MaKH], [MaNguoi], [LoaiKhachHang], [NgayvaoTV], [DiemTichLuy]) VALUES (19, 19, N'TV', CAST(0xCC430B00 AS Date), 4)
INSERT [dbo].[KHACHHANG] ([MaKH], [MaNguoi], [LoaiKhachHang], [NgayvaoTV], [DiemTichLuy]) VALUES (20, 20, N'TV', CAST(0xF1430B00 AS Date), 1)
INSERT [dbo].[KHACHHANG] ([MaKH], [MaNguoi], [LoaiKhachHang], [NgayvaoTV], [DiemTichLuy]) VALUES (21, 21, N'TV', CAST(0x95430B00 AS Date), 2)
INSERT [dbo].[KHACHHANG] ([MaKH], [MaNguoi], [LoaiKhachHang], [NgayvaoTV], [DiemTichLuy]) VALUES (22, NULL, N'VL', NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [MaNguoi], [LoaiKhachHang], [NgayvaoTV], [DiemTichLuy]) VALUES (23, NULL, N'VL', NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [MaNguoi], [LoaiKhachHang], [NgayvaoTV], [DiemTichLuy]) VALUES (24, NULL, N'VL', NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [MaNguoi], [LoaiKhachHang], [NgayvaoTV], [DiemTichLuy]) VALUES (25, NULL, N'VL', NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [MaNguoi], [LoaiKhachHang], [NgayvaoTV], [DiemTichLuy]) VALUES (26, NULL, N'VL', NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [MaNguoi], [LoaiKhachHang], [NgayvaoTV], [DiemTichLuy]) VALUES (27, NULL, N'VL', NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [MaNguoi], [LoaiKhachHang], [NgayvaoTV], [DiemTichLuy]) VALUES (28, NULL, N'VL', NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [MaNguoi], [LoaiKhachHang], [NgayvaoTV], [DiemTichLuy]) VALUES (29, NULL, N'VL', NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [MaNguoi], [LoaiKhachHang], [NgayvaoTV], [DiemTichLuy]) VALUES (30, NULL, N'VL', NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [MaNguoi], [LoaiKhachHang], [NgayvaoTV], [DiemTichLuy]) VALUES (31, NULL, N'VL', NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [MaNguoi], [LoaiKhachHang], [NgayvaoTV], [DiemTichLuy]) VALUES (32, NULL, N'VL', NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [MaNguoi], [LoaiKhachHang], [NgayvaoTV], [DiemTichLuy]) VALUES (33, NULL, N'VL', NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [MaNguoi], [LoaiKhachHang], [NgayvaoTV], [DiemTichLuy]) VALUES (34, NULL, N'VL', NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [MaNguoi], [LoaiKhachHang], [NgayvaoTV], [DiemTichLuy]) VALUES (35, NULL, N'VL', NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [MaNguoi], [LoaiKhachHang], [NgayvaoTV], [DiemTichLuy]) VALUES (36, NULL, N'VL', NULL, NULL)
SET IDENTITY_INSERT [dbo].[KHACHHANG] OFF
SET IDENTITY_INSERT [dbo].[KHOHANG] ON 

INSERT [dbo].[KHOHANG] ([MaKho], [DienTich], [TenKho], [DiaChi]) VALUES (1, 200, N'Kho Thụ Đức', N'23 Thụ Đức HCM')
INSERT [dbo].[KHOHANG] ([MaKho], [DienTich], [TenKho], [DiaChi]) VALUES (2, 150, N'Kho Hoàng Cầu', N'Dường Quảng Hàm HCM')
INSERT [dbo].[KHOHANG] ([MaKho], [DienTich], [TenKho], [DiaChi]) VALUES (3, 50, N'Kho Chính Thống', N'821/21 Quận 2 HCM')
INSERT [dbo].[KHOHANG] ([MaKho], [DienTich], [TenKho], [DiaChi]) VALUES (4, 90, N'Kho Gò Vấp', N'12 Nguyễn Văn Bảo HCM')
SET IDENTITY_INSERT [dbo].[KHOHANG] OFF
SET IDENTITY_INSERT [dbo].[KHUYENMAI] ON 

INSERT [dbo].[KHUYENMAI] ([MaKM], [TenKM], [MoTa], [NgayKM], [NgayKetThucKM], [TongGiaTriKM]) VALUES (1, N'Mùng Khai Trường', N'Ngày khai trường giảm giá 50%', CAST(0x45350B00 AS Date), CAST(0x65350B00 AS Date), 20000000.0000)
INSERT [dbo].[KHUYENMAI] ([MaKM], [TenKM], [MoTa], [NgayKM], [NgayKetThucKM], [TongGiaTriKM]) VALUES (2, N'Sale Mùa Hè', N'Giảm giá 30% cho các sản phẩm mùa hè', CAST(0xBE350B00 AS Date), CAST(0xEA350B00 AS Date), 15000000.0000)
INSERT [dbo].[KHUYENMAI] ([MaKM], [TenKM], [MoTa], [NgayKM], [NgayKetThucKM], [TongGiaTriKM]) VALUES (3, N'Black Friday', N'Ưu đãi hấp dẫn trong Black Friday', CAST(0x6D360B00 AS Date), CAST(0x6F360B00 AS Date), 30000000.0000)
INSERT [dbo].[KHUYENMAI] ([MaKM], [TenKM], [MoTa], [NgayKM], [NgayKetThucKM], [TongGiaTriKM]) VALUES (4, N'Hội Chợ Thế Trường', N'Giảm giá lớn nhân dịp hội chợ', CAST(0x8F350B00 AS Date), CAST(0x9E350B00 AS Date), 25000000.0000)
INSERT [dbo].[KHUYENMAI] ([MaKM], [TenKM], [MoTa], [NgayKM], [NgayKetThucKM], [TongGiaTriKM]) VALUES (5, N'Sản Hàng Rẻ', N'Sản phẩm giảm giá từ 10-50%', CAST(0x1A360B00 AS Date), CAST(0x37360B00 AS Date), 18000000.0000)
INSERT [dbo].[KHUYENMAI] ([MaKM], [TenKM], [MoTa], [NgayKM], [NgayKetThucKM], [TongGiaTriKM]) VALUES (6, N'Back to School', N'Khuyến mãi đặc biệt dành cho học sinh, sinh viên', CAST(0xFB350B00 AS Date), CAST(0x28360B00 AS Date), 22000000.0000)
INSERT [dbo].[KHUYENMAI] ([MaKM], [TenKM], [MoTa], [NgayKM], [NgayKetThucKM], [TongGiaTriKM]) VALUES (7, N'Chào Mừng Xuân Mới', N'Ưu đãi đón chào năm mới', CAST(0x39350B00 AS Date), CAST(0x4E350B00 AS Date), 18000000.0000)
INSERT [dbo].[KHUYENMAI] ([MaKM], [TenKM], [MoTa], [NgayKM], [NgayKetThucKM], [TongGiaTriKM]) VALUES (8, N'Tháng Của Phụ Nữ', N'Quà tặng ý nghĩa dành cho phái đẹp', CAST(0x69350B00 AS Date), CAST(0x6B350B00 AS Date), 15000000.0000)
INSERT [dbo].[KHUYENMAI] ([MaKM], [TenKM], [MoTa], [NgayKM], [NgayKetThucKM], [TongGiaTriKM]) VALUES (9, N'Giảm Giá Cuối Năm', N'Giảm giá cực sức cuối năm', CAST(0x75360B00 AS Date), CAST(0x93360B00 AS Date), 35000000.0000)
INSERT [dbo].[KHUYENMAI] ([MaKM], [TenKM], [MoTa], [NgayKM], [NgayKetThucKM], [TongGiaTriKM]) VALUES (10, N'Sinh Nhật Cửa Hàng', N'Chương trình ưu đãi dành cho khách hàng thân thiết', CAST(0x9F350B00 AS Date), CAST(0xA5350B00 AS Date), 25000000.0000)
SET IDENTITY_INSERT [dbo].[KHUYENMAI] OFF
SET IDENTITY_INSERT [dbo].[LOAISANPHAM] ON 

INSERT [dbo].[LOAISANPHAM] ([MaLoai], [TenLoai]) VALUES (1, N'Áo thun')
INSERT [dbo].[LOAISANPHAM] ([MaLoai], [TenLoai]) VALUES (2, N'Quần Kaki')
INSERT [dbo].[LOAISANPHAM] ([MaLoai], [TenLoai]) VALUES (3, N'Áo Khoác')
INSERT [dbo].[LOAISANPHAM] ([MaLoai], [TenLoai]) VALUES (4, N'Áo sơ mi')
INSERT [dbo].[LOAISANPHAM] ([MaLoai], [TenLoai]) VALUES (5, N'Quần jean')
INSERT [dbo].[LOAISANPHAM] ([MaLoai], [TenLoai]) VALUES (6, N'Đầm dự tiệc')
INSERT [dbo].[LOAISANPHAM] ([MaLoai], [TenLoai]) VALUES (7, N'Áo len')
INSERT [dbo].[LOAISANPHAM] ([MaLoai], [TenLoai]) VALUES (8, N'Quần dài')
INSERT [dbo].[LOAISANPHAM] ([MaLoai], [TenLoai]) VALUES (9, N'Chân váy')
INSERT [dbo].[LOAISANPHAM] ([MaLoai], [TenLoai]) VALUES (10, N'Áo vest')
INSERT [dbo].[LOAISANPHAM] ([MaLoai], [TenLoai]) VALUES (11, N'Áo polo')
INSERT [dbo].[LOAISANPHAM] ([MaLoai], [TenLoai]) VALUES (12, N'Quần short')
INSERT [dbo].[LOAISANPHAM] ([MaLoai], [TenLoai]) VALUES (13, N'Balo túi xách')
INSERT [dbo].[LOAISANPHAM] ([MaLoai], [TenLoai]) VALUES (14, N'Giày thể thao')
INSERT [dbo].[LOAISANPHAM] ([MaLoai], [TenLoai]) VALUES (15, N'Dép xỏ ngón')
INSERT [dbo].[LOAISANPHAM] ([MaLoai], [TenLoai]) VALUES (16, N'Túi đeo chéo')
INSERT [dbo].[LOAISANPHAM] ([MaLoai], [TenLoai]) VALUES (17, N'Ví da')
INSERT [dbo].[LOAISANPHAM] ([MaLoai], [TenLoai]) VALUES (18, N'Nón snapback')
INSERT [dbo].[LOAISANPHAM] ([MaLoai], [TenLoai]) VALUES (19, N'Áo thể thao')
INSERT [dbo].[LOAISANPHAM] ([MaLoai], [TenLoai]) VALUES (20, N'Quần áo đùi')
INSERT [dbo].[LOAISANPHAM] ([MaLoai], [TenLoai]) VALUES (21, N'Bình nước')
INSERT [dbo].[LOAISANPHAM] ([MaLoai], [TenLoai]) VALUES (22, N'Mũ len')
INSERT [dbo].[LOAISANPHAM] ([MaLoai], [TenLoai]) VALUES (23, N'Kính râm')
INSERT [dbo].[LOAISANPHAM] ([MaLoai], [TenLoai]) VALUES (24, N'Dây nịt')
INSERT [dbo].[LOAISANPHAM] ([MaLoai], [TenLoai]) VALUES (25, N'Sơ mi caro')
INSERT [dbo].[LOAISANPHAM] ([MaLoai], [TenLoai]) VALUES (26, N'Quần lửng')
INSERT [dbo].[LOAISANPHAM] ([MaLoai], [TenLoai]) VALUES (27, N'Băng đô')
INSERT [dbo].[LOAISANPHAM] ([MaLoai], [TenLoai]) VALUES (28, N'Áo ba lỗ')
INSERT [dbo].[LOAISANPHAM] ([MaLoai], [TenLoai]) VALUES (29, N'Quần thể thao')
INSERT [dbo].[LOAISANPHAM] ([MaLoai], [TenLoai]) VALUES (30, N'Áo khoác')
SET IDENTITY_INSERT [dbo].[LOAISANPHAM] OFF
SET IDENTITY_INSERT [dbo].[NGUOI] ON 

INSERT [dbo].[NGUOI] ([MaNguoi], [LoaiNguoi], [Ten], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [Email]) VALUES (1, N'KH', N'Phạm Thị Thảo', N'nữ', CAST(0x9F120B00 AS Date), N'0987654321  ', N'6666 Trần Hưng Đạo Q5 HCM', N'Thao@gmail.com')
INSERT [dbo].[NGUOI] ([MaNguoi], [LoaiNguoi], [Ten], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [Email]) VALUES (2, N'KH', N'Lê Văn Nam', N'Nam', CAST(0x7C1B0B00 AS Date), N'0909090909  ', N'7777 Nguyễn Đình Chiểu Q3 HCM', N'Nam@gmail.com')
INSERT [dbo].[NGUOI] ([MaNguoi], [LoaiNguoi], [Ten], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [Email]) VALUES (3, N'KH', N'Nguyễn Văn Tuấn', N'Nam', CAST(0x1E220B00 AS Date), N'0123456789  ', N'8888 Nguyễn Văn Cừ Q5 HCM', N'Tuan@gmail.com')
INSERT [dbo].[NGUOI] ([MaNguoi], [LoaiNguoi], [Ten], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [Email]) VALUES (4, N'KH', N'Trần Thị Kim', N'nữ', CAST(0x1F210B00 AS Date), N'0987654321  ', N'9999 Lê Văn Sỹ Q3 HCM', N'Kim@gmail.com')
INSERT [dbo].[NGUOI] ([MaNguoi], [LoaiNguoi], [Ten], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [Email]) VALUES (5, N'KH', N'Hoàng Văn Huy', N'Nam', CAST(0x50160B00 AS Date), N'0909090909  ', N'1010 Lê Lợi Q1 HCM', N'Huy@gmail.com')
INSERT [dbo].[NGUOI] ([MaNguoi], [LoaiNguoi], [Ten], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [Email]) VALUES (6, N'KH', N'Nguyễn Thị Lan', N'nữ', CAST(0x501A0B00 AS Date), N'0123456789  ', N'1111 Nguyễn Văn Cừ Q5 HCM', N'Lan@gmail.com')
INSERT [dbo].[NGUOI] ([MaNguoi], [LoaiNguoi], [Ten], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [Email]) VALUES (7, N'KH', N'Trần Văn Toàn', N'Nam', CAST(0x4D150B00 AS Date), N'0987654321  ', N'1212 Lê Duẩn Q1 HCM', N'Toan@gmail.com')
INSERT [dbo].[NGUOI] ([MaNguoi], [LoaiNguoi], [Ten], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [Email]) VALUES (8, N'KH', N'Phạm Thị Mỹ', N'nữ', CAST(0xF01E0B00 AS Date), N'0909090909  ', N'1313 Võ Văn Tần Q3 HCM', N'My@gmail.com')
INSERT [dbo].[NGUOI] ([MaNguoi], [LoaiNguoi], [Ten], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [Email]) VALUES (9, N'KH', N'Lê Văn Sơn', N'Nam', CAST(0x83100B00 AS Date), N'0123456789  ', N'1414 Trần Hưng Đạo Q5 HCM', N'Son@gmail.com')
INSERT [dbo].[NGUOI] ([MaNguoi], [LoaiNguoi], [Ten], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [Email]) VALUES (10, N'KH', N'Nguyễn Văn Minh', N'Nam', CAST(0xDC190B00 AS Date), N'0987654321  ', N'1515 Nguyễn Trãi Q5 HCM', N'Minh@gmail.com')
INSERT [dbo].[NGUOI] ([MaNguoi], [LoaiNguoi], [Ten], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [Email]) VALUES (11, N'KH', N'Trần Thị Lan', N'nữ', CAST(0x0C1D0B00 AS Date), N'0909090909  ', N'1616 Lê Văn Sỹ Q3 HCM', N'Lan@gmail.com')
INSERT [dbo].[NGUOI] ([MaNguoi], [LoaiNguoi], [Ten], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [Email]) VALUES (12, N'KH', N'Hoàng Văn Nghĩa', N'Nam', CAST(0xB4130B00 AS Date), N'0123456789  ', N'1717 Trần Hưng Đạo Q5 HCM', N'Nghia@gmail.com')
INSERT [dbo].[NGUOI] ([MaNguoi], [LoaiNguoi], [Ten], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [Email]) VALUES (13, N'KH', N'Nguyễn Thị Thúy', N'nữ', CAST(0x3D170B00 AS Date), N'0987654321  ', N'1818 Lê Duẩn Q1 HCM', N'Thuy@gmail.com')
INSERT [dbo].[NGUOI] ([MaNguoi], [LoaiNguoi], [Ten], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [Email]) VALUES (14, N'KH', N'Lê Văn Quang', N'Nam', CAST(0xD41B0B00 AS Date), N'0909090909  ', N'1919 Võ Văn Tần Q3 HCM', N'Quang@gmail.com')
INSERT [dbo].[NGUOI] ([MaNguoi], [LoaiNguoi], [Ten], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [Email]) VALUES (15, N'KH', N'Phạm Văn Khánh', N'Nam', CAST(0x45150B00 AS Date), N'0123456789  ', N'2020 Lê Lợi Q1 HCM', N'Khanh@gmail.com')
INSERT [dbo].[NGUOI] ([MaNguoi], [LoaiNguoi], [Ten], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [Email]) VALUES (16, N'KH', N'Nguyễn Thị Hồng', N'nữ', CAST(0x85200B00 AS Date), N'0987654321  ', N'2121 Nguyễn Văn Cừ Q5 HCM', N'Hong@gmail.com')
INSERT [dbo].[NGUOI] ([MaNguoi], [LoaiNguoi], [Ten], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [Email]) VALUES (17, N'KH', N'Trần Văn Hưng', N'Nam', CAST(0xB61A0B00 AS Date), N'0909090909  ', N'2222 Lê Duẩn Q1 HCM', N'Hung@gmail.com')
INSERT [dbo].[NGUOI] ([MaNguoi], [LoaiNguoi], [Ten], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [Email]) VALUES (18, N'KH', N'Lê Thị Thu', N'nữ', CAST(0x01160B00 AS Date), N'0123456789  ', N'2323 Trần Hưng Đạo Q5 HCM', N'Thu@gmail.com')
INSERT [dbo].[NGUOI] ([MaNguoi], [LoaiNguoi], [Ten], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [Email]) VALUES (19, N'KH', N'Nguyễn Văn Lương', N'Nam', CAST(0xC9120B00 AS Date), N'0987654321  ', N'2424 Nguyễn Trãi Q5 HCM', N'Luong@gmail.com')
INSERT [dbo].[NGUOI] ([MaNguoi], [LoaiNguoi], [Ten], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [Email]) VALUES (20, N'KH', N'Trần Thị Cẩm', N'nữ', CAST(0xC7190B00 AS Date), N'0909090909  ', N'2525 Lê Văn Sỹ Q3 HCM', N'Cam@gmail.com')
INSERT [dbo].[NGUOI] ([MaNguoi], [LoaiNguoi], [Ten], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [Email]) VALUES (21, N'KH', N'Hoàng Văn Dũng', N'Nam', CAST(0x4D1F0B00 AS Date), N'0123456789  ', N'2626 Trần Hưng Đạo Q5 HCM', N'Dung@gmail.com')
INSERT [dbo].[NGUOI] ([MaNguoi], [LoaiNguoi], [Ten], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [Email]) VALUES (22, N'NV', N'Nguyễn Văn Thanh', N'Nam', CAST(0x810F0B00 AS Date), N'0987654321  ', N'2727 Lê Lợi Q1 HCM', N'Thanh@gmail.com')
INSERT [dbo].[NGUOI] ([MaNguoi], [LoaiNguoi], [Ten], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [Email]) VALUES (23, N'NV', N'Lê Thị Thảo', N'nữ', CAST(0x1B230B00 AS Date), N'0909090909  ', N'2828 Nguyễn Văn Cừ Q5 HCM', N'Thao@gmail.com')
INSERT [dbo].[NGUOI] ([MaNguoi], [LoaiNguoi], [Ten], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [Email]) VALUES (24, N'NV', N'Nguyễn Văn Bình', N'Nam', CAST(0x60170B00 AS Date), N'0123456789  ', N'2929 Lê Duẩn Q1 HCM', N'Binh@gmail.com')
INSERT [dbo].[NGUOI] ([MaNguoi], [LoaiNguoi], [Ten], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [Email]) VALUES (25, N'NV', N'Trần Thị Hương', N'nữ', CAST(0xC21C0B00 AS Date), N'0987654321  ', N'3030 Võ Văn Tần Q3 HCM', N'Huong@gmail.com')
INSERT [dbo].[NGUOI] ([MaNguoi], [LoaiNguoi], [Ten], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [Email]) VALUES (26, N'NV', N'Phạm Văn Minh', N'Nam', CAST(0x3E220B00 AS Date), N'0909090909  ', N'3131 Lê Lợi Q1 HCM', N'Minh@gmail.com')
INSERT [dbo].[NGUOI] ([MaNguoi], [LoaiNguoi], [Ten], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [Email]) VALUES (27, N'NV', N'Nguyễn Thị Hiền', N'nữ', CAST(0x0F150B00 AS Date), N'0123456789  ', N'3232 Nguyễn Văn Cừ Q5 HCM', N'Hien@gmail.com')
INSERT [dbo].[NGUOI] ([MaNguoi], [LoaiNguoi], [Ten], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [Email]) VALUES (28, N'NV', N'Trần Văn Sơn', N'Nam', CAST(0xB81E0B00 AS Date), N'0987654321  ', N'3333 Lê Duẩn Q1 HCM', N'Son@gmail.com')
INSERT [dbo].[NGUOI] ([MaNguoi], [LoaiNguoi], [Ten], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [Email]) VALUES (29, N'NV', N'Lê Thị Mai', N'nữ', CAST(0x24100B00 AS Date), N'0909090909  ', N'3434 Võ Văn Tần Q3 HCM', N'Mai@gmail.com')
INSERT [dbo].[NGUOI] ([MaNguoi], [LoaiNguoi], [Ten], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [Email]) VALUES (30, N'NV', N'Nguyễn Văn Hiếu', N'Nam', CAST(0xFC1A0B00 AS Date), N'0123456789  ', N'3535 Trần Hưng Đạo Q5 HCM', N'Hieu@gmail.com')
INSERT [dbo].[NGUOI] ([MaNguoi], [LoaiNguoi], [Ten], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [Email]) VALUES (31, N'NV', N'Trần Thị Thúy', N'nữ', CAST(0xA71D0B00 AS Date), N'0987654321  ', N'3636 Lê Văn Sỹ Q3 HCM', N'Thuy@gmail.com')
INSERT [dbo].[NGUOI] ([MaNguoi], [LoaiNguoi], [Ten], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [Email]) VALUES (32, N'NV', N'Hoàng Văn Anh', N'Nam', CAST(0x84130B00 AS Date), N'0909090909  ', N'3737 Nguyễn Trãi Q5 HCM', N'Anh@gmail.com')
INSERT [dbo].[NGUOI] ([MaNguoi], [LoaiNguoi], [Ten], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [Email]) VALUES (33, N'NV', N'Nguyễn Văn Đức', N'Nam', CAST(0x09190B00 AS Date), N'0123456789  ', N'3838 Lê Lợi Q1 HCM', N'Duc@gmail.com')
INSERT [dbo].[NGUOI] ([MaNguoi], [LoaiNguoi], [Ten], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [Email]) VALUES (34, N'NV', N'Lê Thị Hồng', N'nữ', CAST(0xFC1F0B00 AS Date), N'0987654321  ', N'3939 Nguyễn Văn Cừ Q5 HCM', N'Hong@gmail.com')
INSERT [dbo].[NGUOI] ([MaNguoi], [LoaiNguoi], [Ten], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [Email]) VALUES (35, N'NV', N'Trần Văn Phú', N'Nam', CAST(0x29170B00 AS Date), N'0909090909  ', N'4040 Lê Duẩn Q1 HCM', N'Phu@gmail.com')
INSERT [dbo].[NGUOI] ([MaNguoi], [LoaiNguoi], [Ten], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [Email]) VALUES (36, N'NV', N'Phạm Thị Lan', N'nữ', CAST(0xB11C0B00 AS Date), N'0123456789  ', N'4141 Võ Văn Tần Q3 HCM', N'Lan@gmail.com')
INSERT [dbo].[NGUOI] ([MaNguoi], [LoaiNguoi], [Ten], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [Email]) VALUES (37, N'NV', N'Nguyễn Văn Thanh', N'Nam', CAST(0x12110B00 AS Date), N'0987654321  ', N'4242 Trần Hưng Đạo Q5 HCM', N'Thanh@gmail.com')
INSERT [dbo].[NGUOI] ([MaNguoi], [LoaiNguoi], [Ten], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [Email]) VALUES (38, N'NV', N'Trần Thị Mỹ', N'nữ', CAST(0xCD170B00 AS Date), N'0909090909  ', N'4343 Lê Văn Sỹ Q3 HCM', N'My@gmail.com')
INSERT [dbo].[NGUOI] ([MaNguoi], [LoaiNguoi], [Ten], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [Email]) VALUES (39, N'NV', N'Hoàng Văn Tuấn', N'Nam', CAST(0xA2210B00 AS Date), N'0123456789  ', N'4444 Nguyễn Trãi Q5 HCM', N'Tuan@gmail.com')
INSERT [dbo].[NGUOI] ([MaNguoi], [LoaiNguoi], [Ten], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [Email]) VALUES (40, N'NV', N'Nguyễn Thị Nga', N'nữ', CAST(0x64140B00 AS Date), N'0987654321  ', N'4545 Lê Lợi Q1 HCM', N'Nga@gmail.com')
INSERT [dbo].[NGUOI] ([MaNguoi], [LoaiNguoi], [Ten], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [Email]) VALUES (41, N'NV', N'Lê Văn Hiếu', N'Nam', CAST(0x441F0B00 AS Date), N'0909090909  ', N'4646 Nguyễn Văn Cừ Q5 HCM', N'Hieu@gmail.com')
INSERT [dbo].[NGUOI] ([MaNguoi], [LoaiNguoi], [Ten], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [Email]) VALUES (42, N'NV', N'Nguyễn Thị Thu', N'nữ', CAST(0x630F0B00 AS Date), N'0123456789  ', N'4747 Lê Duẩn Q1 HCM', N'Thu@gmail.com')
INSERT [dbo].[NGUOI] ([MaNguoi], [LoaiNguoi], [Ten], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [Email]) VALUES (43, N'NV', N'Trần Văn Thành', N'Nam', CAST(0xF8220B00 AS Date), N'0987654321  ', N'4848 Võ Văn Tần Q3 HCM', N'Thanh@gmail.com')
INSERT [dbo].[NGUOI] ([MaNguoi], [LoaiNguoi], [Ten], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [Email]) VALUES (44, N'NV', N'Phạm Thị Kim', N'nữ', CAST(0x0F160B00 AS Date), N'0909090909  ', N'4949 Lê Lợi Q1 HCM', N'Kim@gmail.com')
INSERT [dbo].[NGUOI] ([MaNguoi], [LoaiNguoi], [Ten], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [Email]) VALUES (45, N'NV', N'Lê Văn Quân', N'Nam', CAST(0xE3120B00 AS Date), N'0123456789  ', N'5050 Nguyễn Văn Cừ Q5 HCM', N'Quan@gmail.com')
SET IDENTITY_INSERT [dbo].[NGUOI] OFF
SET IDENTITY_INSERT [dbo].[NHACUNGCAP] ON 

INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNhaCungCap], [SDT], [DiaChi], [Email]) VALUES (1, N'Xưởng may Ngọc Tú', N'0231231421', N'23 Trần Phú HCM', N'ngocTu@gmail.com')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNhaCungCap], [SDT], [DiaChi], [Email]) VALUES (2, N'SNKR', N'023125421', N'23 Trần Quang Khải HCM', N'Snrks@gmail.com')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNhaCungCap], [SDT], [DiaChi], [Email]) VALUES (3, N'TechGuru', N'023145678', N'45 Lê Lợi HCM', N'techguru@gmail.com')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNhaCungCap], [SDT], [DiaChi], [Email]) VALUES (4, N'Fashion Trends', N'023198765', N'98 Nguyễn Huệ HCM', N'fashiontrends@gmail.com')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNhaCungCap], [SDT], [DiaChi], [Email]) VALUES (5, N'Quần Áo Lụa', N'023176543', N'67 Đinh Tiên Hoàng HCM', N'quanla@gmail.com')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNhaCungCap], [SDT], [DiaChi], [Email]) VALUES (6, N'Trendy Co.', N'023123499', N'99 Lý Thường Kiệt HCM', N'trendyco@gmail.com')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNhaCungCap], [SDT], [DiaChi], [Email]) VALUES (7, N'Style Lab', N'023187654', N'54 Phạm Ngũ Lão HCM', N'stylelab@gmail.com')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNhaCungCap], [SDT], [DiaChi], [Email]) VALUES (8, N'Chic Fashion', N'023165432', N'32 Bùi Thị Xuân HCM', N'chicfashion@gmail.com')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNhaCungCap], [SDT], [DiaChi], [Email]) VALUES (9, N'Urban Outfits', N'023112345', N'12 Trần Hưng Đạo HCM', N'urbanoutfits@gmail.com')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNhaCungCap], [SDT], [DiaChi], [Email]) VALUES (10, N'Couture House', N'023134567', N'78 Hai Bà Trưng HCM', N'couturehouse@gmail.com')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNhaCungCap], [SDT], [DiaChi], [Email]) VALUES (11, N'Casual Wear', N'023123487', N'48 Nguyễn Du HCM', N'casualwear@gmail.com')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNhaCungCap], [SDT], [DiaChi], [Email]) VALUES (12, N'Vogue Designs', N'023143289', N'89 Nguyễn Thị Minh Khai HCM', N'voguedesigns@gmail.com')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNhaCungCap], [SDT], [DiaChi], [Email]) VALUES (13, N'Trendy Threads', N'023178945', N'45 Trường Định HCM', N'trendythreads@gmail.com')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNhaCungCap], [SDT], [DiaChi], [Email]) VALUES (14, N'Funky Fashion', N'023155432', N'32 Nguyễn Công Trứ HCM', N'funkyfashion@gmail.com')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNhaCungCap], [SDT], [DiaChi], [Email]) VALUES (15, N'Glamourous Boutique', N'023112349', N'49 Ngô Quyền HCM', N'glamourous@gmail.com')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNhaCungCap], [SDT], [DiaChi], [Email]) VALUES (16, N'Style Central', N'023145678', N'78 Hàm Nghi HCM', N'stylecentral@gmail.com')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNhaCungCap], [SDT], [DiaChi], [Email]) VALUES (17, N'Street Smart', N'023165478', N'78 Nguyễn Thái Học HCM', N'streetsmart@gmail.com')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNhaCungCap], [SDT], [DiaChi], [Email]) VALUES (18, N'City Chic', N'023132156', N'56 Lê Thánh Tôn HCM', N'citychic@gmail.com')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNhaCungCap], [SDT], [DiaChi], [Email]) VALUES (19, N'Dapper Designs', N'023178945', N'45 Trần Quốc Toản HCM', N'dapperdesigns@gmail.com')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNhaCungCap], [SDT], [DiaChi], [Email]) VALUES (20, N'Fashion Avenue', N'023112389', N'89 Trần Hưng Đạo HCM', N'fashionavenue@gmail.com')
SET IDENTITY_INSERT [dbo].[NHACUNGCAP] OFF
SET IDENTITY_INSERT [dbo].[NHANVIEN] ON 

INSERT [dbo].[NHANVIEN] ([MaNV], [NgayVaoLam], [TaiKhoan], [ChucDanh], [GioNghiPhep]) VALUES (22, CAST(0x043F0B00 AS Date), N'2123132 Vietcombank                               ', N'NV', 0)
INSERT [dbo].[NHANVIEN] ([MaNV], [NgayVaoLam], [TaiKhoan], [ChucDanh], [GioNghiPhep]) VALUES (23, CAST(0x083F0B00 AS Date), N'2123432 NamA                                      ', N'TN', 0)
INSERT [dbo].[NHANVIEN] ([MaNV], [NgayVaoLam], [TaiKhoan], [ChucDanh], [GioNghiPhep]) VALUES (24, CAST(0x2C3F0B00 AS Date), N'2123567 Techcombank                               ', N'NV', 1)
INSERT [dbo].[NHANVIEN] ([MaNV], [NgayVaoLam], [TaiKhoan], [ChucDanh], [GioNghiPhep]) VALUES (25, CAST(0x503F0B00 AS Date), N'2123890 ACB                                       ', N'TN', 1)
INSERT [dbo].[NHANVIEN] ([MaNV], [NgayVaoLam], [TaiKhoan], [ChucDanh], [GioNghiPhep]) VALUES (26, CAST(0x713F0B00 AS Date), N'2123998 VietinBank                                ', N'NV', 0)
INSERT [dbo].[NHANVIEN] ([MaNV], [NgayVaoLam], [TaiKhoan], [ChucDanh], [GioNghiPhep]) VALUES (27, CAST(0x953F0B00 AS Date), N'2124111 BIDV                                      ', N'TN', 1)
INSERT [dbo].[NHANVIEN] ([MaNV], [NgayVaoLam], [TaiKhoan], [ChucDanh], [GioNghiPhep]) VALUES (28, CAST(0xB83F0B00 AS Date), N'2124222 Sacombank                                 ', N'NV', 0)
INSERT [dbo].[NHANVIEN] ([MaNV], [NgayVaoLam], [TaiKhoan], [ChucDanh], [GioNghiPhep]) VALUES (29, CAST(0xBE3F0B00 AS Date), N'2124343 VPBank                                    ', N'TN', 0)
INSERT [dbo].[NHANVIEN] ([MaNV], [NgayVaoLam], [TaiKhoan], [ChucDanh], [GioNghiPhep]) VALUES (30, CAST(0xE13F0B00 AS Date), N'2124455 MBBank                                    ', N'NV', 1)
INSERT [dbo].[NHANVIEN] ([MaNV], [NgayVaoLam], [TaiKhoan], [ChucDanh], [GioNghiPhep]) VALUES (31, CAST(0x05400B00 AS Date), N'2124567 VIB                                       ', N'TN', 0)
INSERT [dbo].[NHANVIEN] ([MaNV], [NgayVaoLam], [TaiKhoan], [ChucDanh], [GioNghiPhep]) VALUES (32, CAST(0x29400B00 AS Date), N'2124678 SHB                                       ', N'NV', 1)
INSERT [dbo].[NHANVIEN] ([MaNV], [NgayVaoLam], [TaiKhoan], [ChucDanh], [GioNghiPhep]) VALUES (33, CAST(0x4C400B00 AS Date), N'2124789 BVB                                       ', N'TN', 1)
INSERT [dbo].[NHANVIEN] ([MaNV], [NgayVaoLam], [TaiKhoan], [ChucDanh], [GioNghiPhep]) VALUES (34, CAST(0x70400B00 AS Date), N'2124890 PVcomBank                                 ', N'NV', 0)
INSERT [dbo].[NHANVIEN] ([MaNV], [NgayVaoLam], [TaiKhoan], [ChucDanh], [GioNghiPhep]) VALUES (35, CAST(0x75400B00 AS Date), N'2124999 LienVietPostBank                          ', N'TN', 0)
INSERT [dbo].[NHANVIEN] ([MaNV], [NgayVaoLam], [TaiKhoan], [ChucDanh], [GioNghiPhep]) VALUES (36, CAST(0x99400B00 AS Date), N'2125101 TPBank                                    ', N'NV', 1)
INSERT [dbo].[NHANVIEN] ([MaNV], [NgayVaoLam], [TaiKhoan], [ChucDanh], [GioNghiPhep]) VALUES (37, CAST(0xBD400B00 AS Date), N'2125212 OceanBank                                 ', N'TN', 1)
INSERT [dbo].[NHANVIEN] ([MaNV], [NgayVaoLam], [TaiKhoan], [ChucDanh], [GioNghiPhep]) VALUES (38, CAST(0xDF400B00 AS Date), N'2125323 BaoVietBank                               ', N'NV', 0)
INSERT [dbo].[NHANVIEN] ([MaNV], [NgayVaoLam], [TaiKhoan], [ChucDanh], [GioNghiPhep]) VALUES (39, CAST(0x03410B00 AS Date), N'2125434 PGBank                                    ', N'TN', 1)
INSERT [dbo].[NHANVIEN] ([MaNV], [NgayVaoLam], [TaiKhoan], [ChucDanh], [GioNghiPhep]) VALUES (40, CAST(0x26410B00 AS Date), N'2125545 VRB                                       ', N'NV', 0)
INSERT [dbo].[NHANVIEN] ([MaNV], [NgayVaoLam], [TaiKhoan], [ChucDanh], [GioNghiPhep]) VALUES (41, CAST(0x2C410B00 AS Date), N'2125656 VietCapitalBank                           ', N'TN', 0)
INSERT [dbo].[NHANVIEN] ([MaNV], [NgayVaoLam], [TaiKhoan], [ChucDanh], [GioNghiPhep]) VALUES (42, CAST(0x4F410B00 AS Date), N'2125767 HSBC                                      ', N'NV', 1)
INSERT [dbo].[NHANVIEN] ([MaNV], [NgayVaoLam], [TaiKhoan], [ChucDanh], [GioNghiPhep]) VALUES (43, CAST(0x73410B00 AS Date), N'2125878 DongA                                     ', N'TN', 1)
INSERT [dbo].[NHANVIEN] ([MaNV], [NgayVaoLam], [TaiKhoan], [ChucDanh], [GioNghiPhep]) VALUES (44, CAST(0x97410B00 AS Date), N'2125989 SCB                                       ', N'NV', 0)
INSERT [dbo].[NHANVIEN] ([MaNV], [NgayVaoLam], [TaiKhoan], [ChucDanh], [GioNghiPhep]) VALUES (45, CAST(0x97410B00 AS Date), N'2125f989 SCB                                      ', N'NV', 10)
SET IDENTITY_INSERT [dbo].[NHANVIEN] OFF
SET IDENTITY_INSERT [dbo].[SANPHAM] ON 

INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MaNCC], [MaLoai], [KichThuoc], [MauSac], [ChatLieu], [DonGiaNhap], [DonGiaBan], [NgayNhap]) VALUES (1, N'Áo thun SDR-R', 1, 1, N'S', N'Vàng', N'Với nilon', 100000.0000, 200000.0000, CAST(0x3C410B00 AS Date))
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MaNCC], [MaLoai], [KichThuoc], [MauSac], [ChatLieu], [DonGiaNhap], [DonGiaBan], [NgayNhap]) VALUES (2, N'Quần Kaki ABC-123', 1, 3, N'M', N'Xanh', N'Với dù', 150000.0000, 250000.0000, CAST(0x3B410B00 AS Date))
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MaNCC], [MaLoai], [KichThuoc], [MauSac], [ChatLieu], [DonGiaNhap], [DonGiaBan], [NgayNhap]) VALUES (3, N'Áo Khoác XYZ-789', 2, 5, N'L', N'Đen', N'Với bố', 200000.0000, 350000.0000, CAST(0x3A410B00 AS Date))
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MaNCC], [MaLoai], [KichThuoc], [MauSac], [ChatLieu], [DonGiaNhap], [DonGiaBan], [NgayNhap]) VALUES (4, N'Áo sơ mi LMN-456', 5, 7, N'XL', N'Trắng', N'Với cotton', 120000.0000, 220000.0000, CAST(0x39410B00 AS Date))
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MaNCC], [MaLoai], [KichThuoc], [MauSac], [ChatLieu], [DonGiaNhap], [DonGiaBan], [NgayNhap]) VALUES (5, N'Quần jean PQR-123', 2, 9, N'S', N'Xanh đậm', N'Với jean', 180000.0000, 280000.0000, CAST(0x38410B00 AS Date))
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MaNCC], [MaLoai], [KichThuoc], [MauSac], [ChatLieu], [DonGiaNhap], [DonGiaBan], [NgayNhap]) VALUES (6, N'Đầm dự tiệc JKL-789', 4, 11, N'M', N'Hồng', N'Với lụa', 300000.0000, 500000.0000, CAST(0x37410B00 AS Date))
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MaNCC], [MaLoai], [KichThuoc], [MauSac], [ChatLieu], [DonGiaNhap], [DonGiaBan], [NgayNhap]) VALUES (7, N'Áo len GHI-234', 7, 13, N'L', N'Nâu', N'Với len', 140000.0000, 240000.0000, CAST(0x36410B00 AS Date))
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MaNCC], [MaLoai], [KichThuoc], [MauSac], [ChatLieu], [DonGiaNhap], [DonGiaBan], [NgayNhap]) VALUES (8, N'Quần dài DEF-567', 8, 15, N'XL', N'Ghi', N'Với thun', 160000.0000, 260000.0000, CAST(0x35410B00 AS Date))
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MaNCC], [MaLoai], [KichThuoc], [MauSac], [ChatLieu], [DonGiaNhap], [DonGiaBan], [NgayNhap]) VALUES (9, N'Chân váy UVW-890', 10, 17, N'S', N'Hồng past', N'Với chiffon', 110000.0000, 210000.0000, CAST(0x34410B00 AS Date))
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MaNCC], [MaLoai], [KichThuoc], [MauSac], [ChatLieu], [DonGiaNhap], [DonGiaBan], [NgayNhap]) VALUES (10, N'Áo vest RST-123', 10, 19, N'M', N'Xanh navy', N'Với tweed', 220000.0000, 320000.0000, CAST(0x33410B00 AS Date))
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MaNCC], [MaLoai], [KichThuoc], [MauSac], [ChatLieu], [DonGiaNhap], [DonGiaBan], [NgayNhap]) VALUES (11, N'Áo polo QWE-456', 11, 2, N'L', N'??', N'Với thun cotton', 130000.0000, 230000.0000, CAST(0x32410B00 AS Date))
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MaNCC], [MaLoai], [KichThuoc], [MauSac], [ChatLieu], [DonGiaNhap], [DonGiaBan], [NgayNhap]) VALUES (12, N'Quần short ASD-789', 12, 4, N'S', N'Cam', N'Với kaki', 90000.0000, 190000.0000, CAST(0x31410B00 AS Date))
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MaNCC], [MaLoai], [KichThuoc], [MauSac], [ChatLieu], [DonGiaNhap], [DonGiaBan], [NgayNhap]) VALUES (13, N'Balo túi xách FGH-234', 13, 6, N'M', N'Nâu da bò', N'Da tổng hợp', 250000.0000, 400000.0000, CAST(0x30410B00 AS Date))
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MaNCC], [MaLoai], [KichThuoc], [MauSac], [ChatLieu], [DonGiaNhap], [DonGiaBan], [NgayNhap]) VALUES (14, N'Giày thể thao ZXC-567', 14, 8, N'XL', N'Trắng đen', N'Da tự nhiên', 280000.0000, 480000.0000, CAST(0x2F410B00 AS Date))
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MaNCC], [MaLoai], [KichThuoc], [MauSac], [ChatLieu], [DonGiaNhap], [DonGiaBan], [NgayNhap]) VALUES (15, N'Dép xỏ ngón VBN-890', 15, 10, N'S', N'Xanh lá', N'Nhựa', 80000.0000, 150000.0000, CAST(0x2E410B00 AS Date))
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MaNCC], [MaLoai], [KichThuoc], [MauSac], [ChatLieu], [DonGiaNhap], [DonGiaBan], [NgayNhap]) VALUES (16, N'Túi đeo chéo YUI-123', 16, 12, N'M', N'Đen', N'Với da', 120000.0000, 220000.0000, CAST(0x2D410B00 AS Date))
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MaNCC], [MaLoai], [KichThuoc], [MauSac], [ChatLieu], [DonGiaNhap], [DonGiaBan], [NgayNhap]) VALUES (17, N'Ví da HJK-456', 17, 14, N'L', N'Nâu', N'Da bò', 90000.0000, 170000.0000, CAST(0x2C410B00 AS Date))
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MaNCC], [MaLoai], [KichThuoc], [MauSac], [ChatLieu], [DonGiaNhap], [DonGiaBan], [NgayNhap]) VALUES (18, N'Nón snapback BNM-789', 18, 16, N'XL', N'Đen', N'Với khác', 70000.0000, 130000.0000, CAST(0x2B410B00 AS Date))
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MaNCC], [MaLoai], [KichThuoc], [MauSac], [ChatLieu], [DonGiaNhap], [DonGiaBan], [NgayNhap]) VALUES (19, N'Áo thể thao UIO-234', 19, 18, N'S', N'Xanh đậm', N'Với co giãn', 110000.0000, 210000.0000, CAST(0x2A410B00 AS Date))
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MaNCC], [MaLoai], [KichThuoc], [MauSac], [ChatLieu], [DonGiaNhap], [DonGiaBan], [NgayNhap]) VALUES (20, N'Áo thun nữ SDR-R', 7, 12, N'S', N'Hồng', N'Với cotton', 120000.0000, 220000.0000, CAST(0x9E460B00 AS Date))
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MaNCC], [MaLoai], [KichThuoc], [MauSac], [ChatLieu], [DonGiaNhap], [DonGiaBan], [NgayNhap]) VALUES (21, N'Quần jean nam ABC-123', 11, 18, N'M', N'Xanh đậm', N'Với jean', 200000.0000, 350000.0000, CAST(0x9D460B00 AS Date))
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MaNCC], [MaLoai], [KichThuoc], [MauSac], [ChatLieu], [DonGiaNhap], [DonGiaBan], [NgayNhap]) VALUES (22, N'Áo Khoác dù XYZ-789', 5, 4, N'L', N'Đen', N'Với dù', 180000.0000, 280000.0000, CAST(0x9C460B00 AS Date))
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MaNCC], [MaLoai], [KichThuoc], [MauSac], [ChatLieu], [DonGiaNhap], [DonGiaBan], [NgayNhap]) VALUES (23, N'Áo sơ mi nam LMN-456', 14, 30, N'XL', N'Trắng', N'Với cotton', 150000.0000, 250000.0000, CAST(0x9B460B00 AS Date))
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MaNCC], [MaLoai], [KichThuoc], [MauSac], [ChatLieu], [DonGiaNhap], [DonGiaBan], [NgayNhap]) VALUES (24, N'Quần Kaki nam PQR-123', 3, 9, N'S', N'Xanh', N'Với kaki', 130000.0000, 230000.0000, CAST(0x9A460B00 AS Date))
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MaNCC], [MaLoai], [KichThuoc], [MauSac], [ChatLieu], [DonGiaNhap], [DonGiaBan], [NgayNhap]) VALUES (25, N'Đầm dự tiệc nữ JKL-789', 18, 6, N'M', N'??', N'Với lụa', 300000.0000, 500000.0000, CAST(0x99460B00 AS Date))
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MaNCC], [MaLoai], [KichThuoc], [MauSac], [ChatLieu], [DonGiaNhap], [DonGiaBan], [NgayNhap]) VALUES (26, N'Áo len nam GHI-234', 20, 15, N'L', N'Xám', N'Với len', 140000.0000, 240000.0000, CAST(0x98460B00 AS Date))
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MaNCC], [MaLoai], [KichThuoc], [MauSac], [ChatLieu], [DonGiaNhap], [DonGiaBan], [NgayNhap]) VALUES (27, N'Quần dài nữ DEF-567', 9, 23, N'XL', N'Đen', N'Với thun', 160000.0000, 260000.0000, CAST(0x97460B00 AS Date))
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MaNCC], [MaLoai], [KichThuoc], [MauSac], [ChatLieu], [DonGiaNhap], [DonGiaBan], [NgayNhap]) VALUES (28, N'Chân váy nữ UVW-890', 16, 3, N'S', N'Hồng past', N'Với chiffon', 110000.0000, 210000.0000, CAST(0x96460B00 AS Date))
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MaNCC], [MaLoai], [KichThuoc], [MauSac], [ChatLieu], [DonGiaNhap], [DonGiaBan], [NgayNhap]) VALUES (29, N'Áo vest nam RST-123', 10, 19, N'M', N'Xanh navy', N'Với tweed', 220000.0000, 320000.0000, CAST(0x95460B00 AS Date))
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MaNCC], [MaLoai], [KichThuoc], [MauSac], [ChatLieu], [DonGiaNhap], [DonGiaBan], [NgayNhap]) VALUES (30, N'Áo polo nam QWE-456', 2, 10, N'L', N'Cam', N'Với thun cotton', 130000.0000, 230000.0000, CAST(0x94460B00 AS Date))
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MaNCC], [MaLoai], [KichThuoc], [MauSac], [ChatLieu], [DonGiaNhap], [DonGiaBan], [NgayNhap]) VALUES (31, N'Quần short nam ASD-789', 6, 16, N'S', N'Nâu', N'Với kaki', 90000.0000, 190000.0000, CAST(0x93460B00 AS Date))
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MaNCC], [MaLoai], [KichThuoc], [MauSac], [ChatLieu], [DonGiaNhap], [DonGiaBan], [NgayNhap]) VALUES (32, N'Balo túi xách nữ FGH-234', 19, 7, N'M', N'Đen', N'Da tổng hợp', 250000.0000, 400000.0000, CAST(0x92460B00 AS Date))
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MaNCC], [MaLoai], [KichThuoc], [MauSac], [ChatLieu], [DonGiaNhap], [DonGiaBan], [NgayNhap]) VALUES (33, N'Giày thể thao nam ZXC-567', 8, 1, N'XL', N'Trắng đen', N'Da tự nhiên', 280000.0000, 480000.0000, CAST(0x91460B00 AS Date))
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MaNCC], [MaLoai], [KichThuoc], [MauSac], [ChatLieu], [DonGiaNhap], [DonGiaBan], [NgayNhap]) VALUES (34, N'Dép xỏ ngón nam VBN-890', 13, 25, N'S', N'Xanh lá', N'Nhựa', 80000.0000, 150000.0000, CAST(0x90460B00 AS Date))
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MaNCC], [MaLoai], [KichThuoc], [MauSac], [ChatLieu], [DonGiaNhap], [DonGiaBan], [NgayNhap]) VALUES (35, N'Túi đeo chéo nữ YUI-123', 15, 28, N'M', N'Hồng', N'Với da', 120000.0000, 220000.0000, CAST(0x8F460B00 AS Date))
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MaNCC], [MaLoai], [KichThuoc], [MauSac], [ChatLieu], [DonGiaNhap], [DonGiaBan], [NgayNhap]) VALUES (36, N'Ví da nữ HJK-456', 12, 14, N'L', N'Nâu', N'Da bò', 90000.0000, 170000.0000, CAST(0x8E460B00 AS Date))
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MaNCC], [MaLoai], [KichThuoc], [MauSac], [ChatLieu], [DonGiaNhap], [DonGiaBan], [NgayNhap]) VALUES (37, N'Nón snapback nam BNM-789', 4, 21, N'XL', N'Đen', N'Với khác', 70000.0000, 130000.0000, CAST(0x8D460B00 AS Date))
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MaNCC], [MaLoai], [KichThuoc], [MauSac], [ChatLieu], [DonGiaNhap], [DonGiaBan], [NgayNhap]) VALUES (38, N'Áo thể thao nam UIO-234', 1, 8, N'S', N'Xanh đậm', N'Với co giãn', 110000.0000, 210000.0000, CAST(0x8C460B00 AS Date))
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MaNCC], [MaLoai], [KichThuoc], [MauSac], [ChatLieu], [DonGiaNhap], [DonGiaBan], [NgayNhap]) VALUES (39, N'Quần đùi nữ WER-567', 17, 2, N'M', N'Xám', N'Với thể thao', 85000.0000, 160000.0000, CAST(0x8B460B00 AS Date))
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MaNCC], [MaLoai], [KichThuoc], [MauSac], [ChatLieu], [DonGiaNhap], [DonGiaBan], [NgayNhap]) VALUES (40, N'Áo thun nam XCV-456', 5, 13, N'L', N'Hồng past', N'Với cotton', 140000.0000, 240000.0000, CAST(0x8A460B00 AS Date))
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MaNCC], [MaLoai], [KichThuoc], [MauSac], [ChatLieu], [DonGiaNhap], [DonGiaBan], [NgayNhap]) VALUES (41, N'Quần Kaki nữ DFG-789', 9, 29, N'XL', N'Xanh navy', N'Với kaki', 170000.0000, 270000.0000, CAST(0x89460B00 AS Date))
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MaNCC], [MaLoai], [KichThuoc], [MauSac], [ChatLieu], [DonGiaNhap], [DonGiaBan], [NgayNhap]) VALUES (42, N'Áo Khoác nữ ZRT-123', 20, 5, N'S', N'Xám', N'Với dù', 190000.0000, 290000.0000, CAST(0x88460B00 AS Date))
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MaNCC], [MaLoai], [KichThuoc], [MauSac], [ChatLieu], [DonGiaNhap], [DonGiaBan], [NgayNhap]) VALUES (43, N'Áo sơ mi nữ FVB-456', 7, 11, N'M', N'Trắng', N'Với cotton', 160000.0000, 260000.0000, CAST(0x87460B00 AS Date))
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MaNCC], [MaLoai], [KichThuoc], [MauSac], [ChatLieu], [DonGiaNhap], [DonGiaBan], [NgayNhap]) VALUES (44, N'Quần jean nữ OIU-789', 19, 17, N'L', N'Đen', N'Với jean', 150000.0000, 250000.0000, CAST(0x86460B00 AS Date))
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MaNCC], [MaLoai], [KichThuoc], [MauSac], [ChatLieu], [DonGiaNhap], [DonGiaBan], [NgayNhap]) VALUES (45, N'Đầm dự tiệc nam ZYX-123', 11, 24, N'S', N'??', N'Với lụa', 350000.0000, 550000.0000, CAST(0x85460B00 AS Date))
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MaNCC], [MaLoai], [KichThuoc], [MauSac], [ChatLieu], [DonGiaNhap], [DonGiaBan], [NgayNhap]) VALUES (46, N'Áo len nữ NMB-456', 3, 22, N'M', N'Xanh', N'Với len', 130000.0000, 230000.0000, CAST(0x84460B00 AS Date))
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MaNCC], [MaLoai], [KichThuoc], [MauSac], [ChatLieu], [DonGiaNhap], [DonGiaBan], [NgayNhap]) VALUES (47, N'Quần dài nam WQA-789', 12, 27, N'L', N'Ghi', N'Với thun', 170000.0000, 270000.0000, CAST(0x83460B00 AS Date))
SET IDENTITY_INSERT [dbo].[SANPHAM] OFF
ALTER TABLE [dbo].[CHITIETHOADONNHAP] ADD  DEFAULT ((0)) FOR [TienGiam]
GO
ALTER TABLE [dbo].[CHITIETHOADONNHAP] ADD  DEFAULT ((0)) FOR [TongTinh]
GO
ALTER TABLE [dbo].[CHITIETHOADONXUAT] ADD  DEFAULT ((0.00)) FOR [TienGiam]
GO
ALTER TABLE [dbo].[CHITIETHOADONXUAT] ADD  DEFAULT ((0.00)) FOR [TongTinh]
GO
ALTER TABLE [dbo].[CHITIETKHUYENMAI] ADD  DEFAULT ((0)) FOR [MucGiam]
GO
ALTER TABLE [dbo].[HOADONNHAP] ADD  DEFAULT (getdate()) FOR [NgayNhap]
GO
ALTER TABLE [dbo].[HOADONNHAP] ADD  DEFAULT ((0)) FOR [TongTien]
GO
ALTER TABLE [dbo].[HOADONXUAT] ADD  DEFAULT (getdate()) FOR [NgayBan]
GO
ALTER TABLE [dbo].[HOADONXUAT] ADD  DEFAULT ((0.00)) FOR [TongTien]
GO
ALTER TABLE [dbo].[KHUYENMAI] ADD  DEFAULT ((0)) FOR [TongGiaTriKM]
GO
ALTER TABLE [dbo].[NHANVIEN] ADD  DEFAULT (getdate()) FOR [NgayVaoLam]
GO
ALTER TABLE [dbo].[SANPHAM] ADD  DEFAULT (getdate()) FOR [NgayNhap]
GO
ALTER TABLE [dbo].[CHITIETHOADONNHAP]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDonNhap_MaHDNhap_HoaDonNhap_MaHDNhap] FOREIGN KEY([MaHDNhap])
REFERENCES [dbo].[HOADONNHAP] ([MaHDNhap])
GO
ALTER TABLE [dbo].[CHITIETHOADONNHAP] CHECK CONSTRAINT [FK_ChiTietHoaDonNhap_MaHDNhap_HoaDonNhap_MaHDNhap]
GO
ALTER TABLE [dbo].[CHITIETHOADONNHAP]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDonNhap_MaSP_SanPham_MaSP] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SANPHAM] ([MaSP])
GO
ALTER TABLE [dbo].[CHITIETHOADONNHAP] CHECK CONSTRAINT [FK_ChiTietHoaDonNhap_MaSP_SanPham_MaSP]
GO
ALTER TABLE [dbo].[CHITIETHOADONXUAT]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDonXuat_MaHDXuat_HoaDonXuat_MaHDXuat] FOREIGN KEY([MaHDXuat])
REFERENCES [dbo].[HOADONXUAT] ([MaHDXuat])
GO
ALTER TABLE [dbo].[CHITIETHOADONXUAT] CHECK CONSTRAINT [FK_ChiTietHoaDonXuat_MaHDXuat_HoaDonXuat_MaHDXuat]
GO
ALTER TABLE [dbo].[CHITIETHOADONXUAT]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDonXuat_MaSP_SanPham_MaSP] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SANPHAM] ([MaSP])
GO
ALTER TABLE [dbo].[CHITIETHOADONXUAT] CHECK CONSTRAINT [FK_ChiTietHoaDonXuat_MaSP_SanPham_MaSP]
GO
ALTER TABLE [dbo].[CHITIETKHUYENMAI]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietKhuyenMai_MaKM_KhuyenMai_MaKM] FOREIGN KEY([MaKM])
REFERENCES [dbo].[KHUYENMAI] ([MaKM])
GO
ALTER TABLE [dbo].[CHITIETKHUYENMAI] CHECK CONSTRAINT [FK_ChiTietKhuyenMai_MaKM_KhuyenMai_MaKM]
GO
ALTER TABLE [dbo].[CHITIETKHUYENMAI]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietKhuyenMai_MaSP_SanPham_MaSP] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SANPHAM] ([MaSP])
GO
ALTER TABLE [dbo].[CHITIETKHUYENMAI] CHECK CONSTRAINT [FK_ChiTietKhuyenMai_MaSP_SanPham_MaSP]
GO
ALTER TABLE [dbo].[HANGTRONGKHO]  WITH CHECK ADD  CONSTRAINT [MaKho_FK] FOREIGN KEY([MaKho])
REFERENCES [dbo].[KHOHANG] ([MaKho])
GO
ALTER TABLE [dbo].[HANGTRONGKHO] CHECK CONSTRAINT [MaKho_FK]
GO
ALTER TABLE [dbo].[HANGTRONGKHO]  WITH CHECK ADD  CONSTRAINT [MaSP_FK] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SANPHAM] ([MaSP])
GO
ALTER TABLE [dbo].[HANGTRONGKHO] CHECK CONSTRAINT [MaSP_FK]
GO
ALTER TABLE [dbo].[HOADONNHAP]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonNhap_MaNCC_NhaCungCap_MaNCC] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NHACUNGCAP] ([MaNCC])
GO
ALTER TABLE [dbo].[HOADONNHAP] CHECK CONSTRAINT [FK_HoaDonNhap_MaNCC_NhaCungCap_MaNCC]
GO
ALTER TABLE [dbo].[HOADONNHAP]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonNhap_MaNV_NhanVien_MaNV] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[HOADONNHAP] CHECK CONSTRAINT [FK_HoaDonNhap_MaNV_NhanVien_MaNV]
GO
ALTER TABLE [dbo].[HOADONXUAT]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonXuat_MaKH_KhachHang_MaKH] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[HOADONXUAT] CHECK CONSTRAINT [FK_HoaDonXuat_MaKH_KhachHang_MaKH]
GO
ALTER TABLE [dbo].[HOADONXUAT]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonXuat_MaNV_NhanVien_MaNV] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[HOADONXUAT] CHECK CONSTRAINT [FK_HoaDonXuat_MaNV_NhanVien_MaNV]
GO
ALTER TABLE [dbo].[KHACHHANG]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_MaNguoi_Nguoi_MaNguoi] FOREIGN KEY([MaNguoi])
REFERENCES [dbo].[NGUOI] ([MaNguoi])
GO
ALTER TABLE [dbo].[KHACHHANG] CHECK CONSTRAINT [FK_KhachHang_MaNguoi_Nguoi_MaNguoi]
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_MaNV_Nguoi_MaNguoi] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NGUOI] ([MaNguoi])
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [FK_NhanVien_MaNV_Nguoi_MaNguoi]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_MaLoai_LoaiSanPham_MaLoai] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LOAISANPHAM] ([MaLoai])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_SanPham_MaLoai_LoaiSanPham_MaLoai]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_MaNCC_NhaCungCap_MaNCC] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NHACUNGCAP] ([MaNCC])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_SanPham_MaNCC_NhaCungCap_MaNCC]
GO
ALTER TABLE [dbo].[CHITIETHOADONNHAP]  WITH CHECK ADD CHECK  (([TongTinh]>=(0)))
GO
ALTER TABLE [dbo].[CHITIETHOADONNHAP]  WITH CHECK ADD  CONSTRAINT [CK_DonGia] CHECK  (([DonGia]>=(0)))
GO
ALTER TABLE [dbo].[CHITIETHOADONNHAP] CHECK CONSTRAINT [CK_DonGia]
GO
ALTER TABLE [dbo].[CHITIETHOADONNHAP]  WITH CHECK ADD  CONSTRAINT [CK_SoLuong] CHECK  (([SoLuong]>=(0)))
GO
ALTER TABLE [dbo].[CHITIETHOADONNHAP] CHECK CONSTRAINT [CK_SoLuong]
GO
ALTER TABLE [dbo].[CHITIETHOADONNHAP]  WITH CHECK ADD  CONSTRAINT [CK_TienGiam] CHECK  (([TienGiam]>=(0)))
GO
ALTER TABLE [dbo].[CHITIETHOADONNHAP] CHECK CONSTRAINT [CK_TienGiam]
GO
ALTER TABLE [dbo].[CHITIETHOADONXUAT]  WITH CHECK ADD CHECK  (([DonGia]>=(0)))
GO
ALTER TABLE [dbo].[CHITIETHOADONXUAT]  WITH CHECK ADD CHECK  (([TienGiam]>=(0)))
GO
ALTER TABLE [dbo].[CHITIETHOADONXUAT]  WITH CHECK ADD CHECK  (([TongTinh]>=(0)))
GO
ALTER TABLE [dbo].[CHITIETKHUYENMAI]  WITH CHECK ADD  CONSTRAINT [CK_MucGiam] CHECK  (([MucGiam]>=(0) AND [MucGiam]<=(100)))
GO
ALTER TABLE [dbo].[CHITIETKHUYENMAI] CHECK CONSTRAINT [CK_MucGiam]
GO
ALTER TABLE [dbo].[HOADONNHAP]  WITH CHECK ADD CHECK  (([SoLuongMon]>=(0)))
GO
ALTER TABLE [dbo].[HOADONNHAP]  WITH CHECK ADD CHECK  (([TongTien]>=(0.00)))
GO
ALTER TABLE [dbo].[HOADONNHAP]  WITH CHECK ADD  CONSTRAINT [CK_NgayNhap] CHECK  (([NgayNhap]<=getdate()))
GO
ALTER TABLE [dbo].[HOADONNHAP] CHECK CONSTRAINT [CK_NgayNhap]
GO
ALTER TABLE [dbo].[HOADONXUAT]  WITH CHECK ADD CHECK  (([SoLuongMon]>=(0)))
GO
ALTER TABLE [dbo].[KHACHHANG]  WITH CHECK ADD CHECK  (([DiemTichLuy]>=(0)))
GO
ALTER TABLE [dbo].[KHACHHANG]  WITH CHECK ADD CHECK  (([LoaiKhachHang]='TV' OR [LoaiKhachHang]='VL'))
GO
ALTER TABLE [dbo].[KHACHHANG]  WITH CHECK ADD CHECK  (([NgayvaoTV]<=getdate()))
GO
ALTER TABLE [dbo].[KHUYENMAI]  WITH CHECK ADD  CONSTRAINT [CK_NgayKTKM] CHECK  (([NgayKetThucKM]>[NgayKM] AND [NgayKetThucKM]<getdate()))
GO
ALTER TABLE [dbo].[KHUYENMAI] CHECK CONSTRAINT [CK_NgayKTKM]
GO
ALTER TABLE [dbo].[KHUYENMAI]  WITH CHECK ADD  CONSTRAINT [CK_TongGiaTriKM] CHECK  (([TongGiaTriKM]>=(0)))
GO
ALTER TABLE [dbo].[KHUYENMAI] CHECK CONSTRAINT [CK_TongGiaTriKM]
GO
ALTER TABLE [dbo].[NGUOI]  WITH CHECK ADD CHECK  ((upper([GioiTinh])=N'Nữ' OR upper([GioiTinh])=N'Nam'))
GO
ALTER TABLE [dbo].[NGUOI]  WITH CHECK ADD CHECK  (([LoaiNguoi]='KH' OR [LoaiNguoi]='NV'))
GO
ALTER TABLE [dbo].[NGUOI]  WITH CHECK ADD  CONSTRAINT [CK_EmailNguoi] CHECK  (([Email] like '%@%' AND [Email] like '%.%'))
GO
ALTER TABLE [dbo].[NGUOI] CHECK CONSTRAINT [CK_EmailNguoi]
GO
ALTER TABLE [dbo].[NGUOI]  WITH CHECK ADD  CONSTRAINT [CK_NgaySinhNguoi] CHECK  (([NgaySinh]<=getdate()))
GO
ALTER TABLE [dbo].[NGUOI] CHECK CONSTRAINT [CK_NgaySinhNguoi]
GO
ALTER TABLE [dbo].[NGUOI]  WITH CHECK ADD  CONSTRAINT [CK_SDTNguoi] CHECK  (([SDT] like '0%' OR [SDT] like '+84%'))
GO
ALTER TABLE [dbo].[NGUOI] CHECK CONSTRAINT [CK_SDTNguoi]
GO
ALTER TABLE [dbo].[NHACUNGCAP]  WITH CHECK ADD  CONSTRAINT [CK_EmailNCC] CHECK  (([Email] like '%@%' AND [Email] like '%.%'))
GO
ALTER TABLE [dbo].[NHACUNGCAP] CHECK CONSTRAINT [CK_EmailNCC]
GO
ALTER TABLE [dbo].[NHACUNGCAP]  WITH CHECK ADD  CONSTRAINT [CK_SDTNCC] CHECK  (([SDT] like '0%' OR [SDT] like '+84%'))
GO
ALTER TABLE [dbo].[NHACUNGCAP] CHECK CONSTRAINT [CK_SDTNCC]
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD CHECK  (([ChucDanh]='NV' OR [ChucDanh]='TN'))
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [CK_GioNghiPhep] CHECK  (([GioNghiPhep]>=(0)))
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [CK_GioNghiPhep]
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [CK_NgayVaoLam] CHECK  (([NgayVaoLam]<=getdate()))
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [CK_NgayVaoLam]
GO
USE [master]
GO
ALTER DATABASE [CuaHangQuanAo_TTTK_Nhom3] SET  READ_WRITE 
GO
