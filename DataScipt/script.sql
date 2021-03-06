USE [HopLucShop]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 16/12/2017 7:54:24 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[ID_HD] [smallint] NOT NULL,
	[Ngay_Gio] [datetime] NULL,
	[Ghi_Chu] [nchar](150) NULL,
	[ID_KH] [tinyint] NULL,
	[ID_SP] [tinyint] NULL,
	[ID_NV] [tinyint] NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[ID_HD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 16/12/2017 7:54:24 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[ID_KH] [tinyint] NOT NULL,
	[Ten_KH] [nchar](30) NULL,
	[Dia_Chi] [nchar](50) NULL,
	[SDT_KH] [numeric](18, 0) NULL,
	[Email_KH] [nchar](30) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[ID_KH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSP]    Script Date: 16/12/2017 7:54:24 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSP](
	[ID_Loai] [tinyint] NOT NULL,
	[Ten_Loai_SP] [nchar](30) NULL,
 CONSTRAINT [PK_LoaiSP] PRIMARY KEY CLUSTERED 
(
	[ID_Loai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVienBH]    Script Date: 16/12/2017 7:54:24 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVienBH](
	[ID_NV] [tinyint] NOT NULL,
	[Ten_NV] [nchar](50) NULL,
	[Dia_Chi_NV] [nchar](50) NULL,
	[SDT_NV] [numeric](18, 0) NULL,
	[Email_NV] [nchar](50) NULL,
 CONSTRAINT [PK_NhanVienBH] PRIMARY KEY CLUSTERED 
(
	[ID_NV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 16/12/2017 7:54:24 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[ID_PN] [tinyint] NOT NULL,
	[Ngay_Gio] [datetime] NULL,
	[Ghi_Chu] [nchar](150) NULL,
	[ID_NV] [tinyint] NULL,
	[ID_SP] [tinyint] NULL,
 CONSTRAINT [PK_PhieuNhap] PRIMARY KEY CLUSTERED 
(
	[ID_PN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 16/12/2017 7:54:24 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[ID_SP] [tinyint] NOT NULL,
	[Ma_SP] [nchar](20) NOT NULL,
	[Ten_SP] [nchar](50) NOT NULL,
	[Mo_Ta] [nchar](250) NULL,
	[SL] [smallint] NOT NULL,
	[Gia_Ban] [money] NOT NULL,
	[Gia_Nhap] [money] NOT NULL,
	[ID_Loai_SP] [tinyint] NULL,
	[Ton_Kho] [smallint] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[ID_SP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[HoaDon] ([ID_HD], [Ngay_Gio], [Ghi_Chu], [ID_KH], [ID_SP], [ID_NV]) VALUES (1, NULL, N'Mua bang tien mat                                                                                                                                     ', 2, 1, 2)
INSERT [dbo].[HoaDon] ([ID_HD], [Ngay_Gio], [Ghi_Chu], [ID_KH], [ID_SP], [ID_NV]) VALUES (2, NULL, N'Mua bang the                                                                                                                                          ', 1, 2, 1)
INSERT [dbo].[HoaDon] ([ID_HD], [Ngay_Gio], [Ghi_Chu], [ID_KH], [ID_SP], [ID_NV]) VALUES (3, NULL, N'                                                                                                                                                      ', 7, 5, 1)
INSERT [dbo].[HoaDon] ([ID_HD], [Ngay_Gio], [Ghi_Chu], [ID_KH], [ID_SP], [ID_NV]) VALUES (4, NULL, NULL, 2, 6, 2)
INSERT [dbo].[HoaDon] ([ID_HD], [Ngay_Gio], [Ghi_Chu], [ID_KH], [ID_SP], [ID_NV]) VALUES (5, NULL, NULL, 5, 4, 1)
INSERT [dbo].[HoaDon] ([ID_HD], [Ngay_Gio], [Ghi_Chu], [ID_KH], [ID_SP], [ID_NV]) VALUES (6, NULL, NULL, 8, 4, 2)
INSERT [dbo].[HoaDon] ([ID_HD], [Ngay_Gio], [Ghi_Chu], [ID_KH], [ID_SP], [ID_NV]) VALUES (7, NULL, NULL, 3, 3, 2)
INSERT [dbo].[HoaDon] ([ID_HD], [Ngay_Gio], [Ghi_Chu], [ID_KH], [ID_SP], [ID_NV]) VALUES (8, NULL, NULL, 11, 10, 1)
INSERT [dbo].[HoaDon] ([ID_HD], [Ngay_Gio], [Ghi_Chu], [ID_KH], [ID_SP], [ID_NV]) VALUES (9, NULL, NULL, 10, 7, 1)
INSERT [dbo].[HoaDon] ([ID_HD], [Ngay_Gio], [Ghi_Chu], [ID_KH], [ID_SP], [ID_NV]) VALUES (10, NULL, NULL, 4, 1, 1)
INSERT [dbo].[HoaDon] ([ID_HD], [Ngay_Gio], [Ghi_Chu], [ID_KH], [ID_SP], [ID_NV]) VALUES (11, NULL, NULL, 5, 4, 2)
INSERT [dbo].[HoaDon] ([ID_HD], [Ngay_Gio], [Ghi_Chu], [ID_KH], [ID_SP], [ID_NV]) VALUES (12, NULL, NULL, 6, 6, 1)
INSERT [dbo].[HoaDon] ([ID_HD], [Ngay_Gio], [Ghi_Chu], [ID_KH], [ID_SP], [ID_NV]) VALUES (13, NULL, NULL, 1, 11, 1)
INSERT [dbo].[KhachHang] ([ID_KH], [Ten_KH], [Dia_Chi], [SDT_KH], [Email_KH]) VALUES (1, N'Nguyen Van Phuc               ', N'50 Nguyen Thai Hoc                                ', CAST(123789789 AS Numeric(18, 0)), N'nguyenvanphuc@gmail.com       ')
INSERT [dbo].[KhachHang] ([ID_KH], [Ten_KH], [Dia_Chi], [SDT_KH], [Email_KH]) VALUES (2, N'Nguyen Van Tuan               ', N'23 Tu Xuong                                       ', CAST(905234477 AS Numeric(18, 0)), N'nguyenvantuan@gmail.com       ')
INSERT [dbo].[KhachHang] ([ID_KH], [Ten_KH], [Dia_Chi], [SDT_KH], [Email_KH]) VALUES (3, N'Nguyen Van Bao                ', N'78 Nguyen Tat Thanh                               ', CAST(935753951 AS Numeric(18, 0)), N'nguyenvanbao@gmail.com        ')
INSERT [dbo].[KhachHang] ([ID_KH], [Ten_KH], [Dia_Chi], [SDT_KH], [Email_KH]) VALUES (4, N'Nguyen Van E                  ', N'99 Nguyen Thi Minh Khai                           ', CAST(90969174 AS Numeric(18, 0)), N'nguyenvane@gmail.com          ')
INSERT [dbo].[KhachHang] ([ID_KH], [Ten_KH], [Dia_Chi], [SDT_KH], [Email_KH]) VALUES (5, N'Nguyen Van F                  ', N'45 Nguyen Van Linh                                ', CAST(123895423 AS Numeric(18, 0)), N'nguyenvanf@gmail.com          ')
INSERT [dbo].[KhachHang] ([ID_KH], [Ten_KH], [Dia_Chi], [SDT_KH], [Email_KH]) VALUES (6, N'Nguyen Van Tai                ', N'20 Nguyen Thi Dinh                                ', CAST(123963852 AS Numeric(18, 0)), N'nguyenvantai@gmail.com        ')
INSERT [dbo].[KhachHang] ([ID_KH], [Ten_KH], [Dia_Chi], [SDT_KH], [Email_KH]) VALUES (7, N'Tran Huy                      ', N'15 Nguyen Thai Hoc                                ', CAST(12456784 AS Numeric(18, 0)), N'tranhuy@gmail.com             ')
INSERT [dbo].[KhachHang] ([ID_KH], [Ten_KH], [Dia_Chi], [SDT_KH], [Email_KH]) VALUES (8, N'Nguyen Cuong                  ', N'26 Pham Hung                                      ', NULL, N'nguyencuong@gmail.com         ')
INSERT [dbo].[KhachHang] ([ID_KH], [Ten_KH], [Dia_Chi], [SDT_KH], [Email_KH]) VALUES (9, N'Hoai Linh                     ', N'64 To Huu                                         ', CAST(123456778 AS Numeric(18, 0)), N'hoailinh@gmail.com            ')
INSERT [dbo].[KhachHang] ([ID_KH], [Ten_KH], [Dia_Chi], [SDT_KH], [Email_KH]) VALUES (10, N'Chi Tai                       ', N'13 Mac Thi Buoi                                   ', CAST(909999999 AS Numeric(18, 0)), N'chitai@gmail.com              ')
INSERT [dbo].[KhachHang] ([ID_KH], [Ten_KH], [Dia_Chi], [SDT_KH], [Email_KH]) VALUES (11, N'Viet Huong                    ', N'81 Vo Thi Sau                                     ', CAST(88793912 AS Numeric(18, 0)), N'viethuong@gmail.com           ')
INSERT [dbo].[LoaiSP] ([ID_Loai], [Ten_Loai_SP]) VALUES (1, N'Giay the thao                 ')
INSERT [dbo].[LoaiSP] ([ID_Loai], [Ten_Loai_SP]) VALUES (2, N'Giay Tay                      ')
INSERT [dbo].[LoaiSP] ([ID_Loai], [Ten_Loai_SP]) VALUES (3, N'Dep The Thao                  ')
INSERT [dbo].[LoaiSP] ([ID_Loai], [Ten_Loai_SP]) VALUES (4, N'Dep Da                        ')
INSERT [dbo].[LoaiSP] ([ID_Loai], [Ten_Loai_SP]) VALUES (5, N'Giay quai hau                 ')
INSERT [dbo].[NhanVienBH] ([ID_NV], [Ten_NV], [Dia_Chi_NV], [SDT_NV], [Email_NV]) VALUES (1, N'Nguyen Van A                                      ', N'150 Tran Hung Dao                                 ', CAST(909123123 AS Numeric(18, 0)), N'nguyenvana@gmail.com                              ')
INSERT [dbo].[NhanVienBH] ([ID_NV], [Ten_NV], [Dia_Chi_NV], [SDT_NV], [Email_NV]) VALUES (2, N'Nguyen Van B                                      ', N'145 Nguyen Du                                     ', CAST(903456456 AS Numeric(18, 0)), N'nguyenvanb@gmail.com                              ')
INSERT [dbo].[SanPham] ([ID_SP], [Ma_SP], [Ten_SP], [Mo_Ta], [SL], [Gia_Ban], [Gia_Nhap], [ID_Loai_SP], [Ton_Kho]) VALUES (1, N'001                 ', N'Giay Nike Air Max                                 ', N'Giay the thao danh cho gioi trer                                                                                                                                                                                                                          ', 10, 500000.0000, 460000.0000, 1, 0)
INSERT [dbo].[SanPham] ([ID_SP], [Ma_SP], [Ten_SP], [Mo_Ta], [SL], [Gia_Ban], [Gia_Nhap], [ID_Loai_SP], [Ton_Kho]) VALUES (2, N'002                 ', N'Giay Addidas                                      ', N'Giay theo thao chay bo                                                                                                                                                                                                                                    ', 100, 780000.0000, 65000.0000, 1, 0)
INSERT [dbo].[SanPham] ([ID_SP], [Ma_SP], [Ten_SP], [Mo_Ta], [SL], [Gia_Ban], [Gia_Nhap], [ID_Loai_SP], [Ton_Kho]) VALUES (3, N'003                 ', N'Giay Gucci                                        ', N'Giay cong so                                                                                                                                                                                                                                              ', 43, 2300.0000, 1800.0000, 2, 3)
INSERT [dbo].[SanPham] ([ID_SP], [Ma_SP], [Ten_SP], [Mo_Ta], [SL], [Gia_Ban], [Gia_Nhap], [ID_Loai_SP], [Ton_Kho]) VALUES (4, N'004                 ', N'Giay Puma                                         ', N'Giay the thao thoi trang                                                                                                                                                                                                                                  ', 45, 360.0000, 300.0000, 1, 5)
INSERT [dbo].[SanPham] ([ID_SP], [Ma_SP], [Ten_SP], [Mo_Ta], [SL], [Gia_Ban], [Gia_Nhap], [ID_Loai_SP], [Ton_Kho]) VALUES (5, N'005                 ', N'Dep Addidas                                       ', N'Dep the thao                                                                                                                                                                                                                                              ', 63, 560.0000, 500.0000, 3, 0)
INSERT [dbo].[SanPham] ([ID_SP], [Ma_SP], [Ten_SP], [Mo_Ta], [SL], [Gia_Ban], [Gia_Nhap], [ID_Loai_SP], [Ton_Kho]) VALUES (6, N'006                 ', N'Dep Nike                                          ', N'Dep the thao                                                                                                                                                                                                                                              ', 16, 450.0000, 400.0000, 3, 0)
INSERT [dbo].[SanPham] ([ID_SP], [Ma_SP], [Ten_SP], [Mo_Ta], [SL], [Gia_Ban], [Gia_Nhap], [ID_Loai_SP], [Ton_Kho]) VALUES (7, N'007                 ', N'Dep Cross                                         ', N'Dep the thao                                                                                                                                                                                                                                              ', 23, 180.0000, 150.0000, 3, 3)
INSERT [dbo].[SanPham] ([ID_SP], [Ma_SP], [Ten_SP], [Mo_Ta], [SL], [Gia_Ban], [Gia_Nhap], [ID_Loai_SP], [Ton_Kho]) VALUES (8, N'008                 ', N'Sandal Vento                                      ', N'Sandal cho hoc sinh                                                                                                                                                                                                                                       ', 47, 180.0000, 150.0000, 5, 0)
INSERT [dbo].[SanPham] ([ID_SP], [Ma_SP], [Ten_SP], [Mo_Ta], [SL], [Gia_Ban], [Gia_Nhap], [ID_Loai_SP], [Ton_Kho]) VALUES (9, N'009                 ', N'Sandal Nike                                       ', N'Sandal the thao cho hoc sinh                                                                                                                                                                                                                              ', 200, 360.0000, 300.0000, 5, 0)
INSERT [dbo].[SanPham] ([ID_SP], [Ma_SP], [Ten_SP], [Mo_Ta], [SL], [Gia_Ban], [Gia_Nhap], [ID_Loai_SP], [Ton_Kho]) VALUES (10, N'010                 ', N'Dep da                                            ', N'Dep cho nguoi lon tuoi                                                                                                                                                                                                                                    ', 50, 480.0000, 450.0000, 4, 6)
INSERT [dbo].[SanPham] ([ID_SP], [Ma_SP], [Ten_SP], [Mo_Ta], [SL], [Gia_Ban], [Gia_Nhap], [ID_Loai_SP], [Ton_Kho]) VALUES (11, N'011                 ', N'Dep da ca sau                                     ', N'Dep cho nguoi trung nien                                                                                                                                                                                                                                  ', 150, 720.0000, 700.0000, 4, 10)
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([ID_KH])
REFERENCES [dbo].[KhachHang] ([ID_KH])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVienBH] FOREIGN KEY([ID_NV])
REFERENCES [dbo].[NhanVienBH] ([ID_NV])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVienBH]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_SanPham] FOREIGN KEY([ID_SP])
REFERENCES [dbo].[SanPham] ([ID_SP])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_SanPham]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_NhanVienBH] FOREIGN KEY([ID_NV])
REFERENCES [dbo].[NhanVienBH] ([ID_NV])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_NhanVienBH]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_SanPham] FOREIGN KEY([ID_SP])
REFERENCES [dbo].[SanPham] ([ID_SP])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_SanPham]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSP] FOREIGN KEY([ID_Loai_SP])
REFERENCES [dbo].[LoaiSP] ([ID_Loai])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSP]
GO
