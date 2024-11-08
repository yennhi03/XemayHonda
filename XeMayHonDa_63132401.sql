CREATE DATABASE XeMayHonDa_63132401
GO
USE XeMayHonDa_63132401
GO
CREATE TABLE LoaiSP 
(
	MaLoaiSP nvarchar(100) PRIMARY KEY, 
	TenLoaiSP nvarchar(50) NOT NULL
)
GO
CREATE TABLE SanPham
(
	MaSP nvarchar (100) PRIMARY KEY,
	TenSP nvarchar(100) NOT NULL,
	MauSac nvarchar (100),
	NgaySX date,
	DonGia int,
	AnhSP nvarchar(100),
	MaLoaiSP nvarchar(100) NOT NULL FOREIGN KEY REFERENCES LoaiSP (MaLoaiSP)
	ON UPDATE CASCADE
	ON DELETE CASCADE
)
GO
CREATE TABLE NhanVien (
	MaNV nvarchar(100) PRIMARY KEY,
	HoNV nvarchar(100) NOT NULL,
	TenNV nvarchar(100) NOT NULL,
	GioiTinhNV bit DEFAULT (1),
	NgaySinhNV date,
	AnhNV nvarchar(50),
	Email varchar(50),
	PassNV nvarchar(50),
	SdtNV varchar(20),
	DiaChiNV nvarchar(100) ,
)
GO
CREATE TABLE KhachHang 
(
	MaKH varchar(30) primary key, 
	HoKH nvarchar(50) ,  
	TenKH nvarchar(100) ,
	Email varchar(50)  ,
	PassKH nvarchar(50) ,
	SdtKH varchar(20)  ,
	DiaChi nvarchar(100)
)
GO
CREATE TABLE GioHang
(
	SoHD nvarchar(100) PRIMARY KEY,
	NgayDatHang VARCHAR(30),
	NgayGiaoHang varchar (30),
	MaKH varchar (30)  FOREIGN KEY REFERENCES KhachHang(MaKH),
	Tinhtrang nvarchar(20),
)
GO
CREATE TABLE ChiTietGioHang
(
	MaCTGH int identity(1,1) primary key,
	SoHD nvarchar(100) FOREIGN KEY REFERENCES GioHang(SoHD),
	MaSP NVARCHAR(100),
	Soluong nvarchar(100),
	DonGiaBan nvarchar(100)
)
go
CREATE TABLE QuanTri 
(
	EmailQuanTri varchar(50) PRIMARY KEY, 
	PassQuanTri nvarchar(100) ,
	HoTenQuanTri nvarchar (100) , 
)
go 
INSERT INTO LoaiSP VALUES
('LOAI001', N'Xe Máy'),
('LOAI002', N'Xe Số'),
('LOAI003', N'Xe Tay Ga')
GO
INSERT INTO SanPham VALUES
('SP001', 'Xe a', 'Đen', '2023-01-15', 30000000, 'a.png', 'LOAI001'),
('SP002', 'Xe b', 'Trắng', '2022-11-20', 32000000, 'b.png', 'LOAI003'),
('SP003', 'Xe c', 'Đỏ', '2023-03-10', 35000000, 'c.png', 'LOAI002'),
('SP004', 'Xe d', 'Đỏ', '2023-03-10', 35000000, 'c.png', 'LOAI002')
GO
INSERT INTO KhachHang VALUES    ('KH001', 'Nguyễn', 'Văn A', 'nguyenvana@example.com', '123456', '0123456789', N'123 Đường ABC, Quận XYZ'),
								('KH002', 'Trần', N'Thị B', 'tranthib@example.com', 'abcdef', '0987654321', N'456 Đường XYZ, Quận ABC'),
								('KH003', N'Nguyễn', N'Thanh', 'nguyenthanh@example.com', '123abc', '0123457290', N'378 Đường AD, Quận Z'),
								('KH004', N'Trần', N'Lê Khanh', 'tranlekhanh@example.com', 'abc345def', '0987654000', N'45336 Đường Z, Quận A'),
								('KH005', N'Lê', N'Thanh Trúc', 'nguyenthanhtruc@example.com', '123bvc456', '7777456789', N'Đường ABC1, Quận X'),
								('KH006', N'Hồ', N'Sang', 'hosangb@example.com', 'abc23def', '0537654321', N'4 Đường XZ, Quận BC'),
								('KH007', N'Kiều', N'Tien', 'kieutien@example.com', '123asd456', '0121116789', N'1 Thanh Hoa, Quận XZ'),
								('KH008', N'Trầm', N'Gia Linh', 'tramgialinh@example.com', 'abcgldef', '0982224321', N'4 Đường AA, Quận A'),
								('KH009', N'Lý', N'Quy', 'lyquy@example.com', '123lq456', '0125556789', N'23 Đường AB4C, Quận XY222Z'),
								('KH0010', N'Mai', N'Thanh V', 'maithanhv@example.com', 'abctvdef', '0987656561', N' Đường XYZ11, Quận ABC23'),
								('KH0011', N'Nguyễn', N'C', 'nguyenc@example.com', '1234c56', '0789456789', N'123 Đường Dương Văn Nga, Quận XYZ'),
								('KH0012', N'Lê', N'Ngọc Bích', 'lengocbich@example.com', 'abcgbdef', '0987634321', N'6 Đường 23XYZ, Quận 23ABC'),
								('KH0013', N'Nguyễn', N'My', 'nguyenmy@example.com', '123mm456', '0123336789', N'1 Đường ABC35, Quận XYZ33'),
								('KH0014', N'Trần', N'Danh', 'trandanh@example.com', 'abcddef', '0987654321', N' Đường XYZG, Quận ABB'),
								('KH0015', N'Hồ', N'Van Vàng', 'hovanvang@example.com', '123vv456', '0122226789', N'xx Đường ABC, Quận DDZ'),
								('KH0016', N'Mai', N'Hồng Ngọc', 'maihongngoc@example.com', 'abchndef', '0987000321', N' Đường QQQ, Quận ABC'),
								('KH0017', N'Ngô', N'Lý Hương', 'ngolyhuong@example.com', '123lh456', '0126666789', N'saa Đường C, Quận XYAZ'),
								('KH0018', N'Ngô', N'Vân Nga', 'ngovannga@example.com', 'abcvndef', '0987444321', N'df Đường dv, Quận DC'),
								('KH0019', N'Nguyễn', N'My', 'dongmy@example.com', '1234dm56', '0123455589', N'dm Đường ABDM, Quận WWZ'),
								('KH0020', N'Trần', N'Xuân Huy', 'tranxuanhuy@example.com', 'abc34def', '0987654221', N'22 Đường X22, Quận 22'),
								('KH0021', N'Lý', N'Dai Thanh', 'lydaithanh@example.com', '1234dt56', '0123433389', N'33 Đường 33C, Quận 33'),
								('KH0022', N'Mè', N'Trung Quân', 'metrungquan@example.com', 'abc33def', '0444654321', N'444 Đường 44Z, Quận A44'),
								('KH0023', N'Cao', N'Kỳ Duyên', 'caokyduyen@example.com', '1234kd56', '0123422289', N'22 Đường 22C, Quận X22'),
								('KH0024', N'Lý', N'Thị Lan', 'lythilan@example.com', 'abc55def', '0555654321', N'55 X5Z, Quận A5C'),
								('KH0025', N'Nguyễn', N'Văn Xuân', 'nguyenvanxuan@example.com', '12vx3456', '0129090789', N'9 Đường A9, Quận X9'),
								('KH0026', N'Trần', N'Khuyên My', 'trankhuyenmy@example.com', 'abcd77ef', '0984747321', N'47 Đường 47Z, Quận 747C'),
								('KH0027', N'Mai', N'Khánh', 'maikhanh@example.com', '123mk456', '01234080889', N'88 Đường ABC, Quận 88Z'),
								('KH0028', N'Ngô', N'Thanh Đài', 'ngothanhdai@example.com', 'ntdef', '0987666321', N'66 Đường 6Z, Quận 6C'),
								('KH0029', N'Nguyễn', N'Thị Quyên', 'nguyenthiquyen@example.com', '12tq3456', N'0123450345', '345 ABC, Quận X35'),
								('KH0030', N'Trần', N'My', 'tranmy@example.com', 'abcde54f', '0987545421', N'45 Đường X54, Quận A54')
GO
INSERT INTO NhanVien VALUES ('NV001', N'Lê', N'Thị C', 0, '1990-05-20', 'lethi_c.jpg', 'lethic@example.com', 'xyz123', '0369876543', N'789 Đường DEF, Quận UVW'),
('NV002', N'Phạm', N'Văn D', 1, '1985-09-12', 'pham_van_d.jpg', 'phamvand@example.com', 'abc456', '0912345678', N'321 Đường UVW, Quận DEF');
GO
INSERT INTO GioHang VALUES  ('HD001', '2024-05-25 10:30:00 ', '2024-05-28 14:00:00', 'KH001', N'Đã Giao'),
							('HD002', '2024-05-24 15:45:00','2024-05-25 10:30:00 ', 'KH002', N'Đang Xử Lý'),
							('HD003', '2024-03-25 12:30:00', '2024-04-28 18:00:00', 'KH003', N'Đã Giao'),
							('HD004', '2024-05-24 15:45:00', '2024-05-25 10:30:00 ', 'KH004', N'Đang Xử Lý'),
							('HD005', '2024-07-27 7:30:00', '2024-08-2 16:00:00', 'KH005', N'Đã Giao'),
							('HD006', '2024-01-23 15:45:00', '2024-05-25 10:30:00 ', 'KH006', N'Đang Hủy'),
							('HD007', '2024-09-30 10:30:00', '2024-10-6 18:00:00', 'KH007', N'Đã Giao'),
							('HD008', '2024-05-27 15:45:00', '2024-05-25 10:30:00 ', 'KH008', '?ã h?y'),
							('HD009', '2024-05-22 10:30:00', '2024-05-30 19:00:00', 'KH009', N'Đã Giao'),
							('HD0010', '2024-12-09 19:45:00', '2024-05-25 10:30:00 ', 'KH0010', N'Đang Xử Lý'),
							('HD0011', '2024-05-15 18:30:00', '2024-05-30 19:00:00', 'KH0011', N'Đã Giao'),
							('HD0012', '2024-04-12 15:45:00', '2024-05-25 10:30:00 ', 'KH0012', N'Đang Xử Lý'),
							('HD0013', '2024-02-12 11:30:00', '2024-02-30 15:00:00', 'KH0013', N'Đã Giao'),
							('HD0014', '2024-03-24 19:45:00', '2024-05-25 10:30:00 ', 'KH0014', N'Đang Xử Lý'),
							('HD0015', '2024-03-15 8:30:00', '2024-03-28 14:00:00', 'KH0015', N'Đã Giao'),
							('HD0016', '2024-05-14 19:45:00', '2024-05-25 10:30:00 ', 'KH0016', N'Đang Xử Lý'),
							('HD0017', '2024-01-09 10:30:00', '2024-01-28 11:00:00', 'KH0017', N'Đã Giao'),
							('HD0018', '2024-02-09 20:45:00', '2024-05-25 10:30:00 ', 'KH0018',N'Đang Xử Lý'),
							('HD0019', '2024-04-04 4:30:00', '2024-05-01 11:00:00', 'KH0019', N'Đã Giao'),
							('HD0020', '2024-05-24 15:45:00', '2024-05-25 10:30:00 ', 'KH0020', N'Đang Xử Lý'),
							('HD0021', '2024-05-30 20:30:00', '2024-06-15 15:00:00', 'KH0021', N'Đã Giao'),
							('HD0022', '2024-05-2 12:45:00', '2024-05-25 10:30:00 ', 'KH0022', N'Đang Xử Lý'),
							('HD0023', '2024-06-25 10:30:00', '2024-06-28 14:00:00', 'KH0023', N'Đã Giao'),
							('HD0024', '2023-05-24 15:45:00', '2024-05-25 10:30:00 ', 'KH0024', N'Đang Xử Lý'),
							('HD0025', '2023-03-23 10:30:00', '2023-04-28 14:00:00', 'KH0025', N'Đã Giao'),
							('HD0026', '2023-02-24 15:45:00', '2024-05-25 10:30:00 ', 'KH0026', N'Đang Xử Lý'),
							('HD0027', '2023-04-25 10:30:00', '2024-05-25 10:30:00 ', 'KH0027', N'Đang Hủy'),
							('HD0028', '2023-01-24 13:45:00', '2024-05-25 10:30:00 ', 'KH0028', N'Đang Hủy'),
							('HD0029', '2023-07-25 17:30:00', '2023-07-28 14:00:00', 'KH0029', N'Đã Giao'),
							('HD0030', '2023-06-24 16:45:00', '2024-05-25 10:30:00 ', 'KH0030', N'Đang Xử Lý')
INSERT INTO ChiTietGioHang  VALUES  ('HD001', 'SP001', '1', '30000000'),
									('HD002', 'SP002', '2', '64000000'),
									('HD003', 'SP003', '1', '35000000'),
									('HD004', 'SP004', '1', '30000000'),
									('HD005', 'SP002', '2', '64000000'),
									('HD006', 'SP002', '1', '32000000'),
									('HD007', 'SP002', '2', '64000000'),
									('HD008', 'SP001', '1', '30000000'),
									('HD009', 'SP001', '2', '60000000'),
									('HD0010', 'SP001', '1', '30000000'),
									('HD0011', 'SP004', '1', '300000000'),
									('HD0012', 'SP001', '1', '30000000'),
									('HD0013', 'SP002', '2', '64000000'),
									('HD0014', 'SP001', '1', '30000000'),
									('HD0015', 'SP002', '2', '64000000'),
									('HD0016', 'SP001', '1', '30000000'),
									('HD0017', 'SP003', '1', '35000000'),
									('HD0018', 'SP001', '1', '30000000'),
									('HD0019', 'SP003', '1', '35000000'),
									('HD0020', 'SP003', '1', '35000000'),
									('HD0021', 'SP002', '2', '64000000'),
									('HD0022', 'SP003', '1', '35000000'),
									('HD0023', 'SP002', '2', '64000000'),
									('HD0024', 'SP004', '1', '300000000'),
									('HD0025', 'SP004', '1', '300000000'),
									('HD0026', 'SP001', '1', '600000000'),
									('HD0027', 'SP003', '1', '35000000'),
									('HD0028', 'SP001', '1', '30000000'),
									('HD0029', 'SP004', '2', '300000000'),
									('HD0030', 'SP002', '2', '64000000')
go
INSERT INTO QuanTri  VALUES ('admin@example.com', 'admin123', 'Admin System');
go
CREATE PROCEDURE TimKiem_63132401
    @MaSP varchar(100)=NULL,
	@TenSP nvarchar(100)=NULL
AS
BEGIN
DECLARE @SqlStr NVARCHAR(4000),
		@ParamList nvarchar(2000)
SELECT @SqlStr = '
       SELECT * 
       FROM SanPham
       WHERE  (1=1)
       '
IF @MaSP IS NOT NULL
       SELECT @SqlStr = @SqlStr + '
              AND (MaSP LIKE ''%'+@MaSP+'%'')
              '
IF @TenSP IS NOT NULL
       SELECT @SqlStr = @SqlStr + '
              AND (TenSP LIKE ''%'+@TenSP+'%'')
              '
	EXEC SP_EXECUTESQL @SqlStr
END
GO
CREATE PROCEDURE TimKiem_63132401
    @MaKH varchar(100)=NULL,
	@TenKH nvarchar(100)=NULL
AS
BEGIN
DECLARE @SqlStr NVARCHAR(4000),
		@ParamList nvarchar(2000)
SELECT @SqlStr = '
       SELECT * 
       FROM KhachHang
       WHERE  (1=1)
       '
IF @MaKH IS NOT NULL
       SELECT @SqlStr = @SqlStr + '
              AND (MaKH LIKE ''%'+@MaKH+'%'')
              '
IF @TenKH IS NOT NULL
       SELECT @SqlStr = @SqlStr + '
              AND (TenKH LIKE ''%'+@TenKH+'%'')
              '
	EXEC SP_EXECUTESQL @SqlStr
END
GO
CREATE PROCEDURE TimKiem_63132401
    @MaNV varchar(100)=NULL,
	@TenNV nvarchar(100)=NULL
AS
BEGIN
DECLARE @SqlStr NVARCHAR(4000),
		@ParamList nvarchar(2000)
SELECT @SqlStr = '
       SELECT * 
       FROM NhanVien
       WHERE  (1=1)
       '
IF @MaNV IS NOT NULL
       SELECT @SqlStr = @SqlStr + '
              AND (MaNV LIKE ''%'+@MaNV+'%'')
              '
IF @TenNV IS NOT NULL
       SELECT @SqlStr = @SqlStr + '
              AND (TenNV LIKE ''%'+@TenNV+'%'')
              '
	EXEC SP_EXECUTESQL @SqlStr
END
GO
CREATE PROCEDURE TimKiem_63132401
    @SoHD varchar(100)=NULL,
	@NgayDatHang varchar(30)=NULL
AS
BEGIN
DECLARE @SqlStr NVARCHAR(4000),
		@ParamList nvarchar(2000)
SELECT @SqlStr = '
       SELECT * 
       FROM GioHang
       WHERE  (1=1)
       '
IF @SoHD IS NOT NULL
       SELECT @SqlStr = @SqlStr + '
              AND (SoHD LIKE ''%'+@SoHD+'%'')
              '
IF @NgayDatHang IS NOT NULL
       SELECT @SqlStr = @SqlStr + '
              AND (NgayDatHang LIKE ''%'+@NgayDatHang+'%'')
              '
	EXEC SP_EXECUTESQL @SqlStr
END
GO
CREATE PROCEDURE TimKiem_63132401
    @MaCTGH varchar(100)=NULL,
	@MaSP nvarchar(100)=NULL
AS
BEGIN
DECLARE @SqlStr NVARCHAR(4000),
		@ParamList nvarchar(2000)
SELECT @SqlStr = '
       SELECT * 
       FROM ChiTietGioHang
       WHERE  (1=1)
       '
IF @MaCTGH IS NOT NULL
       SELECT @SqlStr = @SqlStr + '
              AND (MaCTGH LIKE ''%'+@MaCTGH+'%'')
              '
IF @MaSP IS NOT NULL
       SELECT @SqlStr = @SqlStr + '
              AND (MaSP LIKE ''%'+@MaSP+'%'')
              '
	EXEC SP_EXECUTESQL @SqlStr
END