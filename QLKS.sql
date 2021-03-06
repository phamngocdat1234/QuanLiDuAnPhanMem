USE [Hotel]
GO
/****** Object:  Table [dbo].[ChiTietDoDung]    Script Date: 4/23/2018 9:08:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDoDung](
	[MaPhong] [varchar](5) NOT NULL,
	[MaDo] [varchar](10) NOT NULL,
	[SL] [int] NOT NULL,
 CONSTRAINT [PK_ChiTietDoDung] PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC,
	[MaDo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHDDV]    Script Date: 4/23/2018 9:08:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHDDV](
	[MaHD] [varchar](10) NOT NULL,
	[MaDV] [varchar](10) NOT NULL,
	[SL] [int] NULL,
	[DonGia] [float] NULL,
	[ThanhTien] [float] NULL,
 CONSTRAINT [PK_ChiTietHDDV] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DichVu]    Script Date: 4/23/2018 9:08:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DichVu](
	[MaDV] [varchar](10) NOT NULL,
	[TenDV] [nvarchar](30) NOT NULL,
	[Gia] [float] NOT NULL,
 CONSTRAINT [PK_DichVu] PRIMARY KEY CLUSTERED 
(
	[MaDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoDung]    Script Date: 4/23/2018 9:08:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoDung](
	[MaDo] [varchar](10) NOT NULL,
	[TenDo] [nvarchar](30) NOT NULL,
	[Gia] [float] NULL,
 CONSTRAINT [PK_DoDung] PRIMARY KEY CLUSTERED 
(
	[MaDo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonDV]    Script Date: 4/23/2018 9:08:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonDV](
	[MaHD] [varchar](10) NOT NULL,
	[MaKH] [varchar](10) NOT NULL,
	[MaNV] [varchar](10) NOT NULL,
	[NgayLap] [date] NULL,
	[TongTien] [nchar](10) NULL,
 CONSTRAINT [PK_HoaDonDV] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonTraPhong]    Script Date: 4/23/2018 9:08:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonTraPhong](
	[MaHD] [varchar](10) NOT NULL,
	[NgayLap] [date] NULL,
	[SoNgay] [int] NULL,
	[SoGio] [float] NULL,
	[TongTien] [float] NULL,
	[MaNV] [varchar](10) NOT NULL,
	[MaKH] [varchar](10) NOT NULL,
	[MaPhong] [varchar](5) NOT NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 4/23/2018 9:08:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [varchar](10) NOT NULL,
	[TenKH] [nvarchar](30) NOT NULL,
	[GioiTinh] [nvarchar](4) NOT NULL,
	[Cmt] [varchar](12) NOT NULL,
	[NgaySinh] [date] NULL,
	[DT] [varchar](11) NULL,
	[BatDauThue] [datetime] NULL,
	[KetThucThue] [datetime] NULL,
	[MaPhong] [varchar](5) NOT NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KiemTraDoDung]    Script Date: 4/23/2018 9:08:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KiemTraDoDung](
	[MaHD] [varchar](10) NOT NULL,
	[MaDo] [varchar](10) NOT NULL,
	[SLDaDung] [int] NOT NULL,
	[ThanhTien] [float] NULL,
 CONSTRAINT [PK_KiemTraDoDung] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaDo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 4/23/2018 9:08:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [varchar](10) NOT NULL,
	[TenNV] [nvarchar](30) NOT NULL,
	[GioiTinh] [nvarchar](4) NOT NULL,
	[Cmt] [varchar](12) NOT NULL,
	[NgaySinh] [date] NULL,
	[DT] [varchar](11) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phong]    Script Date: 4/23/2018 9:08:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong](
	[MaPhong] [varchar](5) NOT NULL,
	[TenPhong] [nvarchar](15) NOT NULL,
	[Mota] [nvarchar](15) NOT NULL,
	[TamNhin] [nvarchar](15) NULL,
	[TinhTrang] [char](1) NOT NULL,
	[DonGiaH] [float] NULL,
	[DonGiaNgay] [float] NULL,
 CONSTRAINT [PK_Phong] PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [Gia]) VALUES (N'DV01', N'Khoáng', 10000)
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [Gia]) VALUES (N'DV02', N'ICE Đào', 15000)
INSERT [dbo].[DoDung] ([MaDo], [TenDo], [Gia]) VALUES (N'BCDR', N'Bàn chải đánh răng', 20000)
INSERT [dbo].[DoDung] ([MaDo], [TenDo], [Gia]) VALUES (N'DG', N'Dầu gội gói nhỏ', 5000)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [Cmt], [NgaySinh], [DT]) VALUES (N'NV01', N'Đẹp trai', N'Nam', N'013238675', CAST(N'1996-12-28' AS Date), NULL)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [Mota], [TamNhin], [TinhTrang], [DonGiaH], [DonGiaNgay]) VALUES (N'101', N'Phòng 101', N'Phòng Đơn', NULL, N'0', 100000, 500000)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [Mota], [TamNhin], [TinhTrang], [DonGiaH], [DonGiaNgay]) VALUES (N'102', N'Phòng 102', N'Phòng Đôi', NULL, N'0', 120000, 600000)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [Mota], [TamNhin], [TinhTrang], [DonGiaH], [DonGiaNgay]) VALUES (N'103', N'Phòng 103', N'Phòng Đơn', NULL, N'0', 100000, 500000)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [Mota], [TamNhin], [TinhTrang], [DonGiaH], [DonGiaNgay]) VALUES (N'201', N'Phòng 201', N'Phòng Đôi', NULL, N'0', 120000, 600000)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [Mota], [TamNhin], [TinhTrang], [DonGiaH], [DonGiaNgay]) VALUES (N'202', N'Phòng 202', N'Phòng Đơn', NULL, N'0', 100000, 500000)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [Mota], [TamNhin], [TinhTrang], [DonGiaH], [DonGiaNgay]) VALUES (N'203', N'Phòng 203', N'Phòng Đơn', NULL, N'0', 100000, 500000)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [Mota], [TamNhin], [TinhTrang], [DonGiaH], [DonGiaNgay]) VALUES (N'301', N'Phòng 301', N'Phòng Đôi', NULL, N'0', 120000, 600000)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [Mota], [TamNhin], [TinhTrang], [DonGiaH], [DonGiaNgay]) VALUES (N'302', N'Phòng 302', N'Phòng Đơn', NULL, N'0', 100000, 500000)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [Mota], [TamNhin], [TinhTrang], [DonGiaH], [DonGiaNgay]) VALUES (N'303', N'Phòng 303', N'Phòng Đôi', NULL, N'0', 120000, 600000)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [Mota], [TamNhin], [TinhTrang], [DonGiaH], [DonGiaNgay]) VALUES (N'401', N'Phòng 401', N'Phòng Đơn', NULL, N'0', 100000, 500000)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [Mota], [TamNhin], [TinhTrang], [DonGiaH], [DonGiaNgay]) VALUES (N'402', N'Phòng 402', N'Phòng Đơn', NULL, N'0', 100000, 500000)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [Mota], [TamNhin], [TinhTrang], [DonGiaH], [DonGiaNgay]) VALUES (N'403', N'Phòng 403', N'Phòng Đôi', NULL, N'0', 120000, 600000)
ALTER TABLE [dbo].[ChiTietDoDung]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDoDung_DoDung] FOREIGN KEY([MaDo])
REFERENCES [dbo].[DoDung] ([MaDo])
GO
ALTER TABLE [dbo].[ChiTietDoDung] CHECK CONSTRAINT [FK_ChiTietDoDung_DoDung]
GO
ALTER TABLE [dbo].[ChiTietDoDung]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDoDung_Phong] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[Phong] ([MaPhong])
GO
ALTER TABLE [dbo].[ChiTietDoDung] CHECK CONSTRAINT [FK_ChiTietDoDung_Phong]
GO
ALTER TABLE [dbo].[ChiTietHDDV]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHDDV_DichVu] FOREIGN KEY([MaDV])
REFERENCES [dbo].[DichVu] ([MaDV])
GO
ALTER TABLE [dbo].[ChiTietHDDV] CHECK CONSTRAINT [FK_ChiTietHDDV_DichVu]
GO
ALTER TABLE [dbo].[ChiTietHDDV]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHDDV_HoaDonDV] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDonDV] ([MaHD])
GO
ALTER TABLE [dbo].[ChiTietHDDV] CHECK CONSTRAINT [FK_ChiTietHDDV_HoaDonDV]
GO
ALTER TABLE [dbo].[HoaDonDV]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonDV_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HoaDonDV] CHECK CONSTRAINT [FK_HoaDonDV_KhachHang]
GO
ALTER TABLE [dbo].[HoaDonDV]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonDV_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HoaDonDV] CHECK CONSTRAINT [FK_HoaDonDV_NhanVien]
GO
ALTER TABLE [dbo].[HoaDonTraPhong]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HoaDonTraPhong] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[HoaDonTraPhong]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HoaDonTraPhong] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO
ALTER TABLE [dbo].[HoaDonTraPhong]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_Phong] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[Phong] ([MaPhong])
GO
ALTER TABLE [dbo].[HoaDonTraPhong] CHECK CONSTRAINT [FK_HoaDon_Phong]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_Phong] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[Phong] ([MaPhong])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK_KhachHang_Phong]
GO
ALTER TABLE [dbo].[KiemTraDoDung]  WITH CHECK ADD  CONSTRAINT [FK_KiemTraDoDung_DoDung] FOREIGN KEY([MaDo])
REFERENCES [dbo].[DoDung] ([MaDo])
GO
ALTER TABLE [dbo].[KiemTraDoDung] CHECK CONSTRAINT [FK_KiemTraDoDung_DoDung]
GO
ALTER TABLE [dbo].[KiemTraDoDung]  WITH CHECK ADD  CONSTRAINT [FK_KiemTraDoDung_HoaDonTraPhong] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDonTraPhong] ([MaHD])
GO
ALTER TABLE [dbo].[KiemTraDoDung] CHECK CONSTRAINT [FK_KiemTraDoDung_HoaDonTraPhong]
GO
/****** Object:  StoredProcedure [dbo].[SuaCTHoaDonDV]    Script Date: 4/23/2018 9:08:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[SuaCTHoaDonDV](@mahoadon varchar(10),@madichvu varchar(10),@soluong int,@dongia float ,@thanhtien float)
as
begin
update ChiTietHDDV set SL=@soluong,DonGia=@dongia,ThanhTien=@thanhtien
       where MaHD=@mahoadon and MaDV=@madichvu
	   end

GO
/****** Object:  StoredProcedure [dbo].[SuaDo]    Script Date: 4/23/2018 9:08:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create proc [dbo].[SuaDo] (@ma varchar (10),@ten nvarchar (30), @gia float)
 as
 begin
 update DoDung set TenDo=@ten , Gia=@gia where MaDo=@ma
 end
GO
/****** Object:  StoredProcedure [dbo].[SuaDoChiTiet]    Script Date: 4/23/2018 9:08:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create proc [dbo].[SuaDoChiTiet] (@mado varchar (10),@maphong varchar (5), @sl int)
 as
 begin
 update ChiTietDoDung set SL=@sl where MaDo=@mado and MaPhong=@maphong
 end
GO
/****** Object:  StoredProcedure [dbo].[SuaHoaDonDV]    Script Date: 4/23/2018 9:08:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[SuaHoaDonDV](@mahoadon varchar(10),@makhachhang varchar(10),@manhanvien varchar(10),@ngaylap date ,@tongtien nchar(10))
as
begin
update HoaDonDV set MaKH=@makhachhang,MaNV=@manhanvien,NgayLap=@ngaylap,TongTien=@tongtien
       where MaHD=@mahoadon
	   end


GO
/****** Object:  StoredProcedure [dbo].[SuaPhong]    Script Date: 4/23/2018 9:08:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  create proc [dbo].[SuaPhong] (@ma varchar (5),@ten nvarchar (15), @tamnhin nvarchar(15),@giah float,@giangay float )
 as
 begin
 update Phong set  TenPhong=@ten, TamNhin=@tamnhin, DonGiaH =@giah , DonGiaNgay=@giangay where MaPhong = @ma
 end
GO
/****** Object:  StoredProcedure [dbo].[ThemCTHoaDonDV]    Script Date: 4/23/2018 9:08:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  create proc [dbo].[ThemCTHoaDonDV](@mahoadon varchar(10),@madichvu varchar(10),@soluong int,@dongia float ,@thanhtien float)
as
begin
if exists(select MaHD,MaDV from ChiTietHDDV where MaHD=@mahoadon and MaDV=@madichvu)
print 'Dữ liệu đã tồn tai'
else
insert into ChiTietHDDV(MaHD,MaDV,SL,DonGia,ThanhTien) values (@mahoadon,@madichvu,@soluong,@dongia,@thanhtien)
end

GO
/****** Object:  StoredProcedure [dbo].[ThemDo]    Script Date: 4/23/2018 9:08:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ThemDo](@ma varchar (10),@ten nvarchar (30), @gia float )
as 
	begin
	
		if exists (select MaDo from DoDung where MaDo = @ma)
			begin
				print N'Mã Đồ đã tồn tại'
			end
	else 
		begin
		
 insert into DoDung(MaDo,TenDo,Gia) values (@ma ,@ten,@gia)
 end

 end
GO
/****** Object:  StoredProcedure [dbo].[ThemDoChiTiet]    Script Date: 4/23/2018 9:08:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create proc [dbo].[ThemDoChiTiet](@mado varchar (10),@maphong varchar (5), @sl int )
as 
begin
		
 insert into ChiTietDoDung(MaDo,MaPhong,SL) values (@mado ,@maphong,@sl)
 end

GO
/****** Object:  StoredProcedure [dbo].[ThemHoaDonDV]    Script Date: 4/23/2018 9:08:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ThemHoaDonDV](@mahoadon varchar(10),@makhachhang varchar(10),@manhanvien varchar(10),@ngaylap date ,@tongtien nchar(10))
as
begin
if exists(select MaHD from HoaDonDV where MaHD=@mahoadon)
print 'Dữ liệu đã tồn tai'
else
insert into HoaDonDV(MaHD,MaKH,MaNV,NgayLap,TongTien) values (@mahoadon,@makhachhang,@manhanvien,@ngaylap,@tongtien)
end

GO
/****** Object:  StoredProcedure [dbo].[themHoaDonTraPhong]    Script Date: 4/23/2018 9:08:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[themHoaDonTraPhong]
(
@ma varchar(10), @ngay date,@songay int, @sogio float, @tien float, @manv varchar(10), @makh varchar(10), @map varchar(5), @ketthuc datetime
) as
insert into HoaDonTraPhong
values (@ma, @ngay,@songay, @sogio, @tien, @manv, @makh, @map)
update KhachHang
set KetThucThue = @ketthuc where MaKH = @makh
GO
/****** Object:  StoredProcedure [dbo].[UpdateTongTien]    Script Date: 4/23/2018 9:08:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[UpdateTongTien](@mahoadon varchar(10),@tongtien nchar(10))
as
begin
update HoaDonDV set TongTien=@tongtien
       where MaHD=@mahoadon
	   end
GO
/****** Object:  StoredProcedure [dbo].[xemHoaDonTraPhong]    Script Date: 4/23/2018 9:08:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[xemHoaDonTraPhong]
as
select MaHD, NgayLap, SoNgay,SoGio ,TongTien,TenNV, TenKH, HoaDonTraPhong.MaPhong from HoaDonTraPhong, NhanVien, KhachHang
where HoaDonTraPhong.MaKH = KhachHang.MaKH and HoaDonTraPhong.MaNV = NhanVien.MaNV
GO
/****** Object:  StoredProcedure [dbo].[XoaCTHoaDonDV]    Script Date: 4/23/2018 9:08:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[XoaCTHoaDonDV] (@mahoadon varchar(10),@madichvu varchar(10))
 as
 begin
Delete ChiTietHDDV
 where MaHD=@mahoadon and MaDV=@madichvu
 end

 select TenDV, SL , DonGia , ThanhTien from HoaDonDV , ChiTietHDDV , DichVu where HoaDonDV.MaHD = ChiTietHDDV.MaHD and ChiTietHDDV.MaDV = DichVu.MaDV and ChiTietHDDV.MaHD = 'HD02'
GO
/****** Object:  StoredProcedure [dbo].[XoaDo]    Script Date: 4/23/2018 9:08:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create proc [dbo].[XoaDo] (@ma varchar (10))
 as
 begin
 Delete DoDung where MaDo=@ma
 end

 select p.MaPhong,SL,p.TenPhong from ChiTietDoDung c full join Phong p on c.MaPhong=p.MaPhong
 select p.MaPhong,SL,p.TenPhong from ChiTietDoDung c ,Phong p where c.MaPhong=p.MaPhong and c.MaDo = 'BCDR'

GO
/****** Object:  StoredProcedure [dbo].[XoaDoChiTiet]    Script Date: 4/23/2018 9:08:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create proc [dbo].[XoaDoChiTiet] (@mado varchar (10))
 as
 begin
 Delete ChiTietDoDung where MaDo=@mado
 end

GO
/****** Object:  StoredProcedure [dbo].[XoaHoaDonDV]    Script Date: 4/23/2018 9:08:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[XoaHoaDonDV] (@mahoadon varchar(10))
 as
 begin
Delete HoaDonDV
where MaHD = @mahoadon
 end 

 select MaHD,TenNV,TenKH,NgayLap,TongTien from HoaDonDV hd,NHANVIEN nv, KhachHang kh where hd.MaNV=nv.MaNV and hd.MaKH=kh.MaKH
GO
