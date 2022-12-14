USE [master]
GO
/****** Object:  Database [WF_QuanLyCuaHang]    Script Date: 18/07/2022 01:16:44 ******/
CREATE DATABASE [WF_QuanLyCuaHang]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WF_QuanLyCuaHang', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WF_QuanLyCuaHang.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WF_QuanLyCuaHang_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WF_QuanLyCuaHang_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WF_QuanLyCuaHang] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WF_QuanLyCuaHang].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WF_QuanLyCuaHang] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WF_QuanLyCuaHang] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WF_QuanLyCuaHang] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WF_QuanLyCuaHang] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WF_QuanLyCuaHang] SET ARITHABORT OFF 
GO
ALTER DATABASE [WF_QuanLyCuaHang] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [WF_QuanLyCuaHang] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WF_QuanLyCuaHang] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WF_QuanLyCuaHang] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WF_QuanLyCuaHang] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WF_QuanLyCuaHang] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WF_QuanLyCuaHang] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WF_QuanLyCuaHang] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WF_QuanLyCuaHang] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WF_QuanLyCuaHang] SET  ENABLE_BROKER 
GO
ALTER DATABASE [WF_QuanLyCuaHang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WF_QuanLyCuaHang] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WF_QuanLyCuaHang] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WF_QuanLyCuaHang] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WF_QuanLyCuaHang] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WF_QuanLyCuaHang] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WF_QuanLyCuaHang] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WF_QuanLyCuaHang] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WF_QuanLyCuaHang] SET  MULTI_USER 
GO
ALTER DATABASE [WF_QuanLyCuaHang] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WF_QuanLyCuaHang] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WF_QuanLyCuaHang] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WF_QuanLyCuaHang] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [WF_QuanLyCuaHang] SET DELAYED_DURABILITY = DISABLED 
GO
USE [WF_QuanLyCuaHang]
GO
/****** Object:  Table [dbo].[CTHDMH]    Script Date: 18/07/2022 01:16:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTHDMH](
	[MaCTHDMH] [int] IDENTITY(1,1) NOT NULL,
	[MaHDMH] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonGia] [bigint] NULL,
	[KhuyenMai] [int] NOT NULL,
	[ChiPhi] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCTHDMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HDMH]    Script Date: 18/07/2022 01:16:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HDMH](
	[MaHDMH] [int] IDENTITY(1,1) NOT NULL,
	[NgayTao] [datetime] NOT NULL DEFAULT (getdate()),
	[MaNV] [int] NOT NULL,
	[MaNCC] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHDMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 18/07/2022 01:16:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](100) NOT NULL,
	[DiaChi] [nvarchar](100) NULL,
	[DienThoai] [nvarchar](20) NULL,
	[Email] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 18/07/2022 01:16:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[TenNV] [nvarchar](100) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[GioiTinh] [nvarchar](3) NOT NULL,
	[VaiTro] [nvarchar](20) NOT NULL,
	[DiaChi] [nvarchar](100) NULL,
	[DienThoai] [nvarchar](20) NULL,
	[Email] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhieuChi]    Script Date: 18/07/2022 01:16:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuChi](
	[MaPC] [int] IDENTITY(1,1) NOT NULL,
	[MaNV] [int] NOT NULL,
	[MaNCC] [int] NOT NULL,
	[NgayTao] [datetime] NOT NULL DEFAULT (getdate()),
	[SoTien] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 18/07/2022 01:16:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](100) NOT NULL,
	[DonViTinh] [nvarchar](20) NOT NULL,
	[DonGia] [bigint] NULL,
	[KhuyenMai] [int] NOT NULL,
	[MaNCC] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 18/07/2022 01:16:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[MaTK] [int] IDENTITY(1,1) NOT NULL,
	[TenTK] [varchar](50) NOT NULL,
	[MatKhau] [varchar](50) NOT NULL,
	[MaNV] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[V_HDMH_CongNo]    Script Date: 18/07/2022 01:16:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[V_HDMH_CongNo]
as
	select ncc.MaNCC, sum(ct.DonGia * ct.SoLuong * (100 - ct.KhuyenMai) / 100) as TongCongNo
	from (NhaCungCap ncc left join HDMH hd on ncc.MaNCC = hd.MaNCC), CTHDMH ct
	where hd.MaHDMH = ct.MaHDMH
	group by ncc.MaNCC

GO
/****** Object:  View [dbo].[V_PhieuChi_TongChi]    Script Date: 18/07/2022 01:16:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[V_PhieuChi_TongChi]
as 
	select ncc.MaNCC, sum(SoTien) as TongChi
	from NhaCungCap ncc left join PhieuChi pc on ncc.MaNCC = pc.MaNCC
	group by ncc.MaNCC

GO
/****** Object:  View [dbo].[V_NhaCungCap_CongNo]    Script Date: 18/07/2022 01:16:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[V_NhaCungCap_CongNo]
as
	select ncc.MaNCC, TenNCC, TongCongNo, TongChi, (TongCongNo - TongChi) as CongNoConLai
	from NhaCungCap ncc, V_PhieuChi_TongChi pc, V_HDMH_CongNo hd
	where ncc.MaNCC = pc.MaNCC and ncc.MaNCC = hd.MaNCC and pc.MaNCC = hd.MaNCC
	group by ncc.MaNCC, TenNCC, TongCongNo, TongChi

GO
/****** Object:  View [dbo].[V_HDMH]    Script Date: 18/07/2022 01:16:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[V_HDMH]
as
	select hd.*, sum(ct.SoLuong) as TongSL, sum(ct.SoLuong * ct.DonGia * ct.KhuyenMai / 100) as TongGT
	from HDMH hd, CTHDMH ct
	where hd.MaHDMH = ct.MaHDMH 
	group by hd.MaHDMH, hd.MaNCC, hd.MaNV, hd.NgayTao

GO
/****** Object:  View [dbo].[V_SanPham_TonKho]    Script Date: 18/07/2022 01:16:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[V_SanPham_TonKho]
as
	select SanPham.MaSP, TenSP, DonViTinh, SanPham.DonGia, SanPham.KhuyenMai, TenNCC, sum(CTHDMH.SoLuong) as SoLuongTon
	from SanPham, CTHDMH, NhaCungCap
	where SanPham.MaSP = CTHDMH.MaCTHDMH and SanPham.MaNCC = NhaCungCap.MaNCC
	group by SanPham.MaSP, TenSP, DonViTinh, SanPham.DonGia, SanPham.KhuyenMai, SanPham.MaNCC, TenNCC

GO
/****** Object:  View [dbo].[V_TinhHinhMuaHang]    Script Date: 18/07/2022 01:16:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[V_TinhHinhMuaHang]
as
	select MONTH(NgayTao) as Thang, YEAR(NgayTao) as Nam, TenNCC, sum((SoLuong * DonGia) * (100 - KhuyenMai) / 100 + ChiPhi) as TongTien
	from NhaCungCap ncc, HDMH hd, CTHDMH ct
	where ncc.MaNCC = hd.MaNCC and hd.MaHDMH = ct.MaHDMH
	group by hd.MaNCC, TenNCC, MONTH(NgayTao), YEAR(NgayTao)

GO
SET IDENTITY_INSERT [dbo].[CTHDMH] ON 

INSERT [dbo].[CTHDMH] ([MaCTHDMH], [MaHDMH], [MaSP], [SoLuong], [DonGia], [KhuyenMai], [ChiPhi]) VALUES (1, 1, 1, 5, 200000, 5, 0)
INSERT [dbo].[CTHDMH] ([MaCTHDMH], [MaHDMH], [MaSP], [SoLuong], [DonGia], [KhuyenMai], [ChiPhi]) VALUES (2, 1, 2, 25, 200000, 7, 0)
INSERT [dbo].[CTHDMH] ([MaCTHDMH], [MaHDMH], [MaSP], [SoLuong], [DonGia], [KhuyenMai], [ChiPhi]) VALUES (3, 1, 3, 3, 200000, 2, 0)
INSERT [dbo].[CTHDMH] ([MaCTHDMH], [MaHDMH], [MaSP], [SoLuong], [DonGia], [KhuyenMai], [ChiPhi]) VALUES (4, 1, 4, 13, 200000, 9, 0)
INSERT [dbo].[CTHDMH] ([MaCTHDMH], [MaHDMH], [MaSP], [SoLuong], [DonGia], [KhuyenMai], [ChiPhi]) VALUES (5, 1, 5, 4, 200000, 6, 0)
INSERT [dbo].[CTHDMH] ([MaCTHDMH], [MaHDMH], [MaSP], [SoLuong], [DonGia], [KhuyenMai], [ChiPhi]) VALUES (6, 2, 1, 1, 200000, 1, 0)
INSERT [dbo].[CTHDMH] ([MaCTHDMH], [MaHDMH], [MaSP], [SoLuong], [DonGia], [KhuyenMai], [ChiPhi]) VALUES (7, 2, 4, 25, 200000, 3, 0)
INSERT [dbo].[CTHDMH] ([MaCTHDMH], [MaHDMH], [MaSP], [SoLuong], [DonGia], [KhuyenMai], [ChiPhi]) VALUES (8, 3, 2, 3, 200000, 4, 0)
INSERT [dbo].[CTHDMH] ([MaCTHDMH], [MaHDMH], [MaSP], [SoLuong], [DonGia], [KhuyenMai], [ChiPhi]) VALUES (9, 4, 1, 5, 200000, 2, 0)
INSERT [dbo].[CTHDMH] ([MaCTHDMH], [MaHDMH], [MaSP], [SoLuong], [DonGia], [KhuyenMai], [ChiPhi]) VALUES (10, 5, 5, 2, 200000, 5, 0)
INSERT [dbo].[CTHDMH] ([MaCTHDMH], [MaHDMH], [MaSP], [SoLuong], [DonGia], [KhuyenMai], [ChiPhi]) VALUES (11, 7, 6, 5, 370000, 8, 20000)
INSERT [dbo].[CTHDMH] ([MaCTHDMH], [MaHDMH], [MaSP], [SoLuong], [DonGia], [KhuyenMai], [ChiPhi]) VALUES (12, 7, 7, 7, 370000, 8, 50000)
INSERT [dbo].[CTHDMH] ([MaCTHDMH], [MaHDMH], [MaSP], [SoLuong], [DonGia], [KhuyenMai], [ChiPhi]) VALUES (13, 8, 3, 3, 370000, 8, 25000)
INSERT [dbo].[CTHDMH] ([MaCTHDMH], [MaHDMH], [MaSP], [SoLuong], [DonGia], [KhuyenMai], [ChiPhi]) VALUES (14, 8, 6, 4, 370000, 8, 37000)
INSERT [dbo].[CTHDMH] ([MaCTHDMH], [MaHDMH], [MaSP], [SoLuong], [DonGia], [KhuyenMai], [ChiPhi]) VALUES (15, 8, 7, 6, 280000, 8, 69000)
INSERT [dbo].[CTHDMH] ([MaCTHDMH], [MaHDMH], [MaSP], [SoLuong], [DonGia], [KhuyenMai], [ChiPhi]) VALUES (16, 9, 1, 5, 408000, 15, 25000)
SET IDENTITY_INSERT [dbo].[CTHDMH] OFF
SET IDENTITY_INSERT [dbo].[HDMH] ON 

INSERT [dbo].[HDMH] ([MaHDMH], [NgayTao], [MaNV], [MaNCC]) VALUES (1, CAST(N'2022-05-05 00:00:00.000' AS DateTime), 1, 2)
INSERT [dbo].[HDMH] ([MaHDMH], [NgayTao], [MaNV], [MaNCC]) VALUES (2, CAST(N'2022-05-06 00:00:00.000' AS DateTime), 2, 1)
INSERT [dbo].[HDMH] ([MaHDMH], [NgayTao], [MaNV], [MaNCC]) VALUES (3, CAST(N'2022-05-07 00:00:00.000' AS DateTime), 3, 5)
INSERT [dbo].[HDMH] ([MaHDMH], [NgayTao], [MaNV], [MaNCC]) VALUES (4, CAST(N'2022-05-08 00:00:00.000' AS DateTime), 4, 2)
INSERT [dbo].[HDMH] ([MaHDMH], [NgayTao], [MaNV], [MaNCC]) VALUES (5, CAST(N'2022-05-09 00:00:00.000' AS DateTime), 5, 4)
INSERT [dbo].[HDMH] ([MaHDMH], [NgayTao], [MaNV], [MaNCC]) VALUES (6, CAST(N'2022-07-17 00:00:00.000' AS DateTime), 1, 3)
INSERT [dbo].[HDMH] ([MaHDMH], [NgayTao], [MaNV], [MaNCC]) VALUES (7, CAST(N'2022-07-17 00:00:00.000' AS DateTime), 1, 3)
INSERT [dbo].[HDMH] ([MaHDMH], [NgayTao], [MaNV], [MaNCC]) VALUES (8, CAST(N'2022-07-18 00:00:00.000' AS DateTime), 1, 3)
INSERT [dbo].[HDMH] ([MaHDMH], [NgayTao], [MaNV], [MaNCC]) VALUES (9, CAST(N'2022-07-18 00:00:00.000' AS DateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[HDMH] OFF
SET IDENTITY_INSERT [dbo].[NhaCungCap] ON 

INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai], [Email]) VALUES (1, N'Hoàng Hà', N'Ngõ 36 Hàng Chuối', N'0936128188', N'hoanghacompany@gmail.com')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai], [Email]) VALUES (2, N'Nam Hưng', N'65 Ông Ích Khiêm', N'0925189326', N'namhungcoop@gmail.com')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai], [Email]) VALUES (3, N'Thái Tuấn', N'32 Bùi Viện', N'0866197285', N'thaituan_supplier@gmail.com')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai], [Email]) VALUES (4, N'Indomia', N'189 Hòa Bình', N'0978121435', N'indomia@gmail.com')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai], [Email]) VALUES (5, N'Rẻ Và Đẹp 123456', N'27 Tân Kỳ Tân Quý', N'0912854667', N'revadep1980@gmail.com')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai], [Email]) VALUES (7, N'Kitty', N'123 weioquio', N'328190381209', N'kthcm@gmail.com')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai], [Email]) VALUES (8, N'Tuấn Hưng', N'123 Hoàng Hoa Thám', N'0918317225', N'tuanhungshop@gmail.com')
SET IDENTITY_INSERT [dbo].[NhaCungCap] OFF
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [VaiTro], [DiaChi], [DienThoai], [Email]) VALUES (1, N'Nguyễn Hoàng Huy', CAST(N'1985-03-31' AS Date), N'Nam', N'NVBH', NULL, NULL, NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [VaiTro], [DiaChi], [DienThoai], [Email]) VALUES (2, N'Bùi Văn Nam', CAST(N'1988-06-27' AS Date), N'Nam', N'NVBH', NULL, NULL, NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [VaiTro], [DiaChi], [DienThoai], [Email]) VALUES (3, N'Nguyễn Thị Bé Ba', CAST(N'1993-05-01' AS Date), N'Nữ', N'NVBH', NULL, NULL, NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [VaiTro], [DiaChi], [DienThoai], [Email]) VALUES (4, N'Nhàn Tuấn Kiệt', CAST(N'1990-12-05' AS Date), N'Nam', N'NVBH', NULL, NULL, NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [VaiTro], [DiaChi], [DienThoai], [Email]) VALUES (5, N'Lò Văn Tới', CAST(N'1991-09-25' AS Date), N'Nam', N'NVBH', NULL, NULL, NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [VaiTro], [DiaChi], [DienThoai], [Email]) VALUES (6, N'Quang Tuấn Hải', CAST(N'1986-07-30' AS Date), N'Nam', N'NVBH', NULL, NULL, NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [VaiTro], [DiaChi], [DienThoai], [Email]) VALUES (7, N'Trần Thị Kiều My', CAST(N'1992-09-11' AS Date), N'Nữ', N'NVBH', NULL, NULL, NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [VaiTro], [DiaChi], [DienThoai], [Email]) VALUES (8, N'Nguyễn Thị Thắm', CAST(N'1998-05-15' AS Date), N'Nữ', N'Thu ngân', N'27 Nguyễn Thị Thập', N'0966187231', N'thamnguyen@gmail.com')
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
SET IDENTITY_INSERT [dbo].[PhieuChi] ON 

INSERT [dbo].[PhieuChi] ([MaPC], [MaNV], [MaNCC], [NgayTao], [SoTien]) VALUES (1, 3, 2, CAST(N'2022-05-05 00:00:00.000' AS DateTime), 2500000)
INSERT [dbo].[PhieuChi] ([MaPC], [MaNV], [MaNCC], [NgayTao], [SoTien]) VALUES (2, 4, 1, CAST(N'2022-05-27 00:00:00.000' AS DateTime), 4800000)
INSERT [dbo].[PhieuChi] ([MaPC], [MaNV], [MaNCC], [NgayTao], [SoTien]) VALUES (3, 2, 5, CAST(N'2022-05-07 00:00:00.000' AS DateTime), 1300000)
INSERT [dbo].[PhieuChi] ([MaPC], [MaNV], [MaNCC], [NgayTao], [SoTien]) VALUES (4, 5, 2, CAST(N'2022-05-08 00:00:00.000' AS DateTime), 2700000)
INSERT [dbo].[PhieuChi] ([MaPC], [MaNV], [MaNCC], [NgayTao], [SoTien]) VALUES (5, 3, 4, CAST(N'2022-05-09 00:00:00.000' AS DateTime), 2000000)
INSERT [dbo].[PhieuChi] ([MaPC], [MaNV], [MaNCC], [NgayTao], [SoTien]) VALUES (6, 6, 1, CAST(N'2022-07-17 00:00:00.000' AS DateTime), 248000)
SET IDENTITY_INSERT [dbo].[PhieuChi] OFF
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [DonGia], [KhuyenMai], [MaNCC]) VALUES (1, N'Thùng 48 hộp sữa tươi tiệt trùng ít đường TH true MILK 180ml', N'Thùng', 408000, 15, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [DonGia], [KhuyenMai], [MaNCC]) VALUES (2, N'Thùng 48 bịch sữa tiệt trùng có đường Dutch Lady Canxi & Protein 220ml', N'Thùng', 336000, 14, 2)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [DonGia], [KhuyenMai], [MaNCC]) VALUES (3, N'Thùng 48 hộp sữa tươi tiệt trùng ít đường Dalat Milk 180ml', N'Thùng', 370000, 8, 3)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [DonGia], [KhuyenMai], [MaNCC]) VALUES (4, N'Sữa tươi tiệt trùng không đường Dutch Lady hộp 1 lít', N'Hộp', 31600, 5, 5)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [DonGia], [KhuyenMai], [MaNCC]) VALUES (5, N'Lốc 4 hộp sữa tươi ít đường Vinamilk 180ml', N'Lốc', 30500, 12, 7)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [DonGia], [KhuyenMai], [MaNCC]) VALUES (6, N'Thùng 48 hộp sữa tươi tiệt trùng ít đường Dalat Milk 180ml', N'Thùng', 370000, 8, 3)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [DonGia], [KhuyenMai], [MaNCC]) VALUES (7, N'Thùng 48 hộp sữa tươi tiệt trùng ít đường Dalat Milk 180ml', N'Thùng', 370000, 8, 3)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [DonGia], [KhuyenMai], [MaNCC]) VALUES (8, N'Thùng 12 hộp sữa tươi tiệt trùng ít đường TH true MILK 350ml', N'Thùng', 250000, 5, 8)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON 

INSERT [dbo].[TaiKhoan] ([MaTK], [TenTK], [MatKhau], [MaNV]) VALUES (1, N'admin', N'123', 1)
INSERT [dbo].[TaiKhoan] ([MaTK], [TenTK], [MatKhau], [MaNV]) VALUES (2, N'nambuivan', N'nam123', 2)
INSERT [dbo].[TaiKhoan] ([MaTK], [TenTK], [MatKhau], [MaNV]) VALUES (3, N'banguyenthibe', N'ba123', 3)
INSERT [dbo].[TaiKhoan] ([MaTK], [TenTK], [MatKhau], [MaNV]) VALUES (4, N'kietnhantuan', N'kiet123', 4)
INSERT [dbo].[TaiKhoan] ([MaTK], [TenTK], [MatKhau], [MaNV]) VALUES (5, N'toilovan', N'toi123', 5)
INSERT [dbo].[TaiKhoan] ([MaTK], [TenTK], [MatKhau], [MaNV]) VALUES (6, N'haiquangtuan', N'hai123', 6)
INSERT [dbo].[TaiKhoan] ([MaTK], [TenTK], [MatKhau], [MaNV]) VALUES (7, N'mytranthikieu', N'my123', 7)
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
ALTER TABLE [dbo].[CTHDMH]  WITH CHECK ADD  CONSTRAINT [FK_CTHDMH_MaHDMH] FOREIGN KEY([MaHDMH])
REFERENCES [dbo].[HDMH] ([MaHDMH])
GO
ALTER TABLE [dbo].[CTHDMH] CHECK CONSTRAINT [FK_CTHDMH_MaHDMH]
GO
ALTER TABLE [dbo].[CTHDMH]  WITH CHECK ADD  CONSTRAINT [FK_CTHDMH_MaSP] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[CTHDMH] CHECK CONSTRAINT [FK_CTHDMH_MaSP]
GO
ALTER TABLE [dbo].[HDMH]  WITH CHECK ADD  CONSTRAINT [FK_HDMH_MaNCC] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[HDMH] CHECK CONSTRAINT [FK_HDMH_MaNCC]
GO
ALTER TABLE [dbo].[HDMH]  WITH CHECK ADD  CONSTRAINT [FK_HDMH_MaNV] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HDMH] CHECK CONSTRAINT [FK_HDMH_MaNV]
GO
ALTER TABLE [dbo].[PhieuChi]  WITH CHECK ADD  CONSTRAINT [FK_PhieuChi_MaNCC] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[PhieuChi] CHECK CONSTRAINT [FK_PhieuChi_MaNCC]
GO
ALTER TABLE [dbo].[PhieuChi]  WITH CHECK ADD  CONSTRAINT [FK_PhieuChi_MaNV] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[PhieuChi] CHECK CONSTRAINT [FK_PhieuChi_MaNV]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_MaNCC] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_MaNCC]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_MaNV] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_MaNV]
GO
/****** Object:  StoredProcedure [dbo].[P_Login]    Script Date: 18/07/2022 01:16:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[P_Login]
@user nvarchar(50), @pass nvarchar(50)
as
	select *
	from TaiKhoan
	where TenTK = @user and MatKhau = @pass

GO
/****** Object:  StoredProcedure [dbo].[P_NhaCungCap_CongNo]    Script Date: 18/07/2022 01:16:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[P_NhaCungCap_CongNo]
as
	select ncc.MaNCC, sum(ct.DonGia * ct.SoLuong * ct.KhuyenMai / 100) as TongCongNo, sum(pc.SoTien) as DaChi, (sum(ct.DonGia * ct.SoLuong * ct.KhuyenMai / 100) - sum(pc.SoTien)) as CongNoConLai
	from NhaCungCap ncc, HDMH hd, CTHDMH ct, PhieuChi pc
	where ncc.MaNCC = hd.MaNCC and hd.MaHDMH = ct.MaHDMH and pc.MaNCC = hd.MaNCC and pc.MaNCC = ncc.MaNCC
	group by ncc.MaNCC

GO
/****** Object:  StoredProcedure [dbo].[P_SanPham_MaNCC_Load]    Script Date: 18/07/2022 01:16:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[P_SanPham_MaNCC_Load]
@mancc int
as
	select *
	from SanPham
	where MaNCC = @mancc
GO
/****** Object:  StoredProcedure [dbo].[P_SanPham_TonKho]    Script Date: 18/07/2022 01:16:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[P_SanPham_TonKho]
@mancc int, @sltu int, @slden int
as
	select sp.MaSP, TenSP, DonViTinh, DonGia, KhuyenMai, TenNCC, sum(SoLuongTon)
	from V_SanPham_TonKho_NCC ton, SanPham sp, NhaCungCap ncc
	where sp.MaSP = ton.MaSP and sp.MaNCC = ncc.MaNCC and ton.MaNCC = ncc.MaNCC and ton.MaNCC = @mancc
	group by sp.MaSP, TenSP, DonViTinh, DonGia, KhuyenMai, TenNCC
	having sum(SoLuongTon) between @sltu and @slden

GO
/****** Object:  StoredProcedure [dbo].[P_TimKiem_HDMH]    Script Date: 18/07/2022 01:16:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[P_TimKiem_HDMH]
@mahdmh int, @manv int, @mancc int, @sltu int, @slden int, @sttu money, @stden money
as
	select hd.*, sum(ct.SoLuong) as TongSL, format(sum(ct.SoLuong * ct.DonGia * ct.KhuyenMai / 100), 'c0', 'vi-VN') as TongGT
	from HDMH hd, CTHDMH ct
	where hd.MaHDMH = ct.MaHDMH 
	group by hd.MaHDMH, hd.MaNCC, hd.MaNV, hd.NgayTao
	having hd.MaHDMH = @mahdmh OR MaNV = @manv OR MaNCC = @mancc OR (sum(ct.SoLuong) between @sltu AND @slden) OR (sum(ct.SoLuong * ct.DonGia * ct.KhuyenMai / 100) between @sttu AND @stden)

GO
/****** Object:  StoredProcedure [dbo].[P_TimKiem_NhaCungCap]    Script Date: 18/07/2022 01:16:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[P_TimKiem_NhaCungCap]
@mancc int, @tenncc nvarchar(100), @diachi nvarchar(100), @dienthoai nvarchar(20), @email nvarchar(100)
as
	select *
	from NhaCungCap
	where MaNCC = @mancc OR TenNCC like '%'+@tenncc+'%' OR DiaChi like '%'+@diachi+'%' OR DienThoai = @dienthoai OR Email like '%'+@email+'%'

GO
/****** Object:  StoredProcedure [dbo].[P_TimKiem_NhanVien]    Script Date: 18/07/2022 01:16:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[P_TimKiem_NhanVien]
@manv int, @tennv nvarchar(100), @gioitinh nvarchar(3), @vaitro nvarchar(20), @diachi nvarchar(100), @dienthoai nvarchar(20), @email nvarchar(100)
as
	select *
	from NhanVien
	where MaNV = @manv OR TenNV like '%'+@tennv+'%' OR GioiTinh like '%'+@gioitinh+'%' OR VaiTro like '%'+@vaitro+'%' OR DiaChi like '%'+@diachi+'%' OR DienThoai = @dienthoai OR Email like '%'+@email+'%'

GO
/****** Object:  StoredProcedure [dbo].[P_TimKiem_PhieuChi]    Script Date: 18/07/2022 01:16:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[P_TimKiem_PhieuChi]
@mapc int, @manv int, @mancc int, @sttu money, @stden money
as
	select *
	from PhieuChi
	where MaPC = @mapc OR MaNV = @manv OR MaNCC = @mancc OR (SoTien between @sttu AND @stden)

GO
/****** Object:  StoredProcedure [dbo].[P_TimKiem_SanPham]    Script Date: 18/07/2022 01:16:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[P_TimKiem_SanPham]
@masp int, @tensp nvarchar(100), @donvitinh nvarchar(20), @dgtu money, @dgden money, @kmtu int, @kmden int, @mancc int
as
	select *
	from SanPham
	where MaSP = @masp OR TenSP like '%'+@tensp+'%' OR DonViTinh like '%'+@donvitinh+'%' OR (DonGia between @dgtu AND @dgden) OR (KhuyenMai between @kmtu AND @kmden) OR MaNCC = @mancc

GO
USE [master]
GO
ALTER DATABASE [WF_QuanLyCuaHang] SET  READ_WRITE 
GO
