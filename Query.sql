use [CuaHangQuanAo_TTTK]
-->>>>> Select

 --Truy vấn SQL để hiển thị thông tin của các hóa đơn xuất được cung cấp bởi nhà cung cấp có tên là "SNKR", 
 --bao gồm mã hóa đơn, mã nhà cung cấp, ngày bán và tổng tiền

select hdx.MaHDXuat, sp.MaNCC, hdx.NgayBan, hdx.TongTien
from [dbo].[HOADONXUAT] hdx join [dbo].[CHITIETHOADONXUAT] cthdx 
on hdx.MaHDXuat = cthdx.MaHDXuat 
join [dbo].[SANPHAM] sp on sp.MaSP = cthdx.MaSP
join [dbo].[NHACUNGCAP] ncc on ncc.MaNCC = sp.MaNCC
where ncc.TenNhaCungCap like 'SNKR'

-- Truy vấn xem các nhân viên có tổng tiền bán hàng từ trở lên 2.000.000, 
-- thông tin hiển thị gồm mã nhân viên, tên nhân viên, tổng tiền bán được

Select nv.[MaNV],n.[Ten], sum(hdx.TongTien) as TongTienBanDuoc
from [dbo].[NGUOI] as n
	join [dbo].[NHANVIEN] as nv on n.MaNguoi=nv.MaNV
	join [dbo].[HOADONXUAT] as hdx on nv.[MaNV]=hdx.[MaNV]
group by nv.[MaNV], n.[Ten]
having sum(hdx.TongTien) > 2000000	

-- Truy vấn các sản phẩm trong kho và số lượng tồn kho của từng sản phẩm theo kho hàng tên là Kho Gò Vấp

SELECT SANPHAM.TenSP, HANGTRONGKHO.SoLuongTonKho, KHOHANG.TenKho
FROM SANPHAM
INNER JOIN HANGTRONGKHO ON SANPHAM.MaSP = HANGTRONGKHO.MaSP
INNER JOIN KHOHANG ON KHOHANG.MaKho = HANGTRONGKHO.MaKho
WHERE KHOHANG.TenKho = N'Kho Gò Vấp'

-- Truy vấn xem sản phẩm Áo Khoác dù XYZ-789 nằm ở các kho hàng nào thông tin 
-- gồm mã sản phẩm, tên kho hàng, địa chỉ kho hàng, tên hàng trong kho

select htk.MaSp, sp.TenSp, kh.TenKho, kh.DiaChi
from HANGTRONGKHO htk join KHOHANG kh on htk.MaKho = kh.MaKho
join SANPHAM sp on sp.MaSP = htk.MaSP
where sp.TenSP = 'Áo Khoác dù XYZ-789'

-- Danh sách các khách hàng và số lương hóa đơn mà họ đã tạo

select NGUOI.Ten, count(HOADONXUAT.MaKH) as SoLuongHoaDon
from NGUOI
inner join KHACHHANG on NGUOI.MaNguoi = KHACHHANG.MaNguoi
inner join HOADONXUAT on HOADONXUAT.MaKH = KHACHHANG.MaKH
group by NGUOI.Ten

-->>>>> Function

-- Viết function để tính tổng số lượng sản phẩm đã bán của một sản phẩm
go
create function TinhTongSoLuongSanPhamBan(@MaSP int)
returns int
as
begin 
	declare @Tong int
	select @Tong = sum(SoLuong)
	from CHITIETHOADONXUAT 
	where MaSP = @MaSP
	return @Tong
end
go
declare @TongSoLuong int
set @TongSoLuong = dbo.TinhTongSoLuongSanPhamBan(31)
print concat(N'Tổng số lượng của sản phẩm đã bán là: ', @TongSoLuong)

--Tạo một function để truy vấn thông tin các hóa đơn xuất, dựa trên tên nhà cung cấp được cung cấp như là đầu vào. 
--Function này sẽ trả về thông tin về các hóa đơn xuất, mã nhà cung cấp, ngày bán và tổng tiền

go
create function HDXuat(@tenNCC nvarchar(10))
returns table
as 
		return (
			select hdx.MaHDXuat, sp.MaNCC, hdx.NgayBan, hdx.TongTien
			from [dbo].[HOADONXUAT] hdx join [dbo].[CHITIETHOADONXUAT] cthdx 
			on hdx.MaHDXuat = cthdx.MaHDXuat 
			join [dbo].[SANPHAM] sp on sp.MaSP = cthdx.MaSP
			join [dbo].[NHACUNGCAP] ncc on ncc.MaNCC = sp.MaNCC
			where ncc.TenNhaCungCap = @tenNCC
		)
go
select * from HDXuat('SNKR')


-- Tạo function xem các nhân viên có tổng tiền bán hàng từ (Giá trị nhập vào), 
-- thông tin hiển thị gồm mã nhân viên, tên nhân viên, tổng tiền bán được
go
create function SumMoney(@money float)
returns table
as
	return(
	select nv.[MaNV],n.[Ten], sum(hdx.TongTien) as TongTienBanDuoc
	from [dbo].[NGUOI] as n
	join [dbo].[NHANVIEN] as nv on n.MaNguoi=nv.MaNV
	join [dbo].[HOADONXUAT] as hdx on nv.[MaNV]=hdx.[MaNV]
	group by nv.[MaNV], n.[Ten]
	Having sum(hdx.TongTien) > @money
	)
---Su dung Ham
go
select * from SumMoney(2000000)

--Function để tính tổng số lượng sản phẩm đã bán của một sản phẩm:
GO
	CREATE FUNCTION TinhTongSoLuongSanPhamBan(@MaSP INT)
	RETURNS INT
	AS
	BEGIN
		DECLARE @TongSoLuong INT;
		SELECT @TongSoLuong = SUM(SoLuong)
		FROM CHITIETHOADONXUAT C
		WHERE MaSP = @MaSP;
		RETURN @TongSoLuong;
	END
GO
	DECLARE @TongSoLuong INT;
	SET @TongSoLuong = dbo.TinhTongSoLuongSanPhamBan(31);
	PRINT CONCAT(N'Tổng số lượng của sản phẩm đã bán là: ', @TongSoLuong)

-- Viết function(input là tên sản phẩm) xem sản phẩm đó nằm ở các kho hàng nào 
-- thông tin gồm mã sản phẩm, tên kho hàng, địa chỉ kho hàng, tên hàng trong kho

go
create function XemKho(@tenSP nvarchar(20))
returns table
as
	return(
		select htk.MaSP, sp.TenSP, kh.TenKho, kh.DiaChi
		from HANGTRONGKHO htk join KHOHANG kh on htk.MaKho = kh.MaKho
		join SANPHAM sp on sp.MaSP = htk.MaSP
		where sp.TenSP = @tenSP
	)

go
select * from XemKho('Áo Khoác dù XYZ-789')

-->>>>>> Stored Procedure

--Procedure để thêm một sản phẩm mới vào bảng SANPHAM
go
create proc ThemSanPham
(@TenSP NVARCHAR(50)
,@MaNCC int
,@MaLoai int
,@DonGiaNhap money
,@DonGiaBan money
,@NgayNhap date
)
AS
BEGIN
	INSERT INTO SANPHAM (TenSP, MaNCC, MaLoai, DonGiaNhap, DonGiaBan, NgayNhap)
	VALUES (@TenSP, @MaNCC, @MaLoai, @DonGiaNhap, @DonGiaBan, @NgayNhap);
END

go
exec dbo.ThemSanPham 'Áo len lông cừu ASX',10,1, 2000000, 300000, '2020-10-20'

 --Viết một stored procedure để hiển thị thông tin tổng tiền bán của một mặt hàng (sản phẩm) được nhập vào
go
create proc dbo.TongTien(@MaSP int )
as 
	begin
		select MaSP, sum([TongTinh]) as TongTien
		from [dbo].[CHITIETHOADONXUAT]
		where MaSP = @MaSP
		group by MaSP
	end
go
exec dbo.TongTien 31

-- Hãy viết proc sản phẩm nào có số lượng tồn kho là nhiều nhất (Thông tin hiển thị :'Sản phẩm X có số lượng tồn nhiều nhất là Y')

go
create proc Quantity_
as
begin 
	select top 1 N'Sản phẩm ' + sp.TenSP + N' có số lượng tồn nhiều nhất là ' + CAST(htk.SoLuongTonKho AS nvarchar(50)) AS ThongTin		
	from [dbo].[SANPHAM] as sp
	join [dbo].[HANGTRONGKHO] as htk on sp.MaSP=htk.MaSP
	Order by htk.SoLuongTonKho DESC;
end

exec Quantity_

-- Procedure để tính tổng giá trị của một hóa đơn nhập mà chưa trừ tiền giảm 
GO
	CREATE PROCEDURE dbo.TinhTongGiaTriHoaDonNhap(@MaHDNhap INT, @TongTien MONEY OUTPUT)
	AS
	BEGIN
		SELECT @TongTien = SUM(SoLuong * DonGia)
		FROM CHITIETHOADONNHAP
		WHERE MaHDNhap = @MaHDNhap;
	END;

GO
	DECLARE @TONGTIEN MONEY
	EXEC dbo.TinhTongGiaTriHoaDonNhap 2, @TONGTIEN OUTPUT
	PRINT CONCAT(N'TỔNG TIỀN LÀ: ', @TONGTIEN);

-- Hãy viết proc cung cấp khách hàng có lượt mua nhiều nhất từ trước đến giờ
go
create proc dbo.XemLuotMua_KhachHang
as
begin 
	select top 1 n.Ten, kh.MaKH, count(hdx.MaHDXuat) as SoLuotMua
	from KHACHHANG kh join HOADONXUAT hdx on kh.MaKH = hdx.MaKH
	join NGUOI n on n.MaNguoi = kh.MaNguoi
	group by n.Ten, kh.MaKH
	order by count (hdx.MaHDXuat) desc
end
go


exec dbo.XemLuotMua_KhachHang
-->>>>> Trigger

-- Viết Trigger để tự động cập nhật tính tổng tiền của chi tiết hóa đơn (DonGia * SoLuong)- TienGiam và
-- tổng tiền của một hóa đơn nhập khi một chi tiết hóa đơn nhập mới được thêm vào

go
create trigger CapNhatTongTien
on [dbo].[CHITIETHOADONNHAP]
after insert
as
	begin 
		Declare @MaHDNhap int, @Tien money;
		select @MaHDNhap = inserted.MaHDNhap, @Tien = (inserted.DonGia*inserted.SoLuong)-inserted.TienGiam
		from inserted;

		Update [dbo].[HOADONNHAP]
		Set TongTien = TongTien + @Tien,
		SoLuongMon = SoLuongMon + 1
		Where MaHDNhap = @MaHDNhap
	End;

insert into CHITIETHOADONNHAP(MaHDNhap, MaSP, SoLuong, DonGia, TienGiam) values (2,31,3,20000,0)
select * from HOADONNHAP where MaHDNhap = 2

-- Hãy viết trigger khi số thêm 1 chi tiết hóa đơn xuất thì số lượng sản phẩm đó sẽ bị trừ vào số lượng tồn kho hiện có
go
create Trigger ThemChiTietHDX
on CHITIETHOADONXUAT
after insert
as
begin
    Declare @MaSP int, @SoLuong int;

    select @MaSP = inserted.MaSP, @SoLuong = inserted.SoLuong
    from inserted;

    Update [dbo].[HANGTRONGKHO]
    Set SoLuongTonKho = SoLuongTonKho - @SoLuong
    Where MaSP = @MaSP;
End;
go
insert into CHITIETHOADONXUAT (MaHDXuat, MaSP, SoLuong, DonGia, TienGiam) values (1, 19, 2, 100000, 0)
select * from HANGTRONGKHO where MaSP = 19

--Trigger để kiểm tra hợp lệ của ngày nhập trong hóa đơn nhập:
GO
CREATE TRIGGER KiemTraNgayNhapHoaDonNhap
ON HOADONNHAP
FOR INSERT
AS
BEGIN
	IF (SELECT COUNT(*)
		FROM inserted
		WHERE NgayNhap > GETDATE()) > 0
	BEGIN
		ROLLBACK TRANSACTION;
	END;
END
INSERT INTO HOADONNHAP([MaNCC],[MaNV],[NgayNhap],[SoLuongMon],[TongTien]) VALUES (1, 22, '2020-10-20', 1, 20000)
INSERT INTO HOADONNHAP([MaNCC],[MaNV],[NgayNhap],[SoLuongMon],[TongTien]) VALUES (1, 22, '2024-10-20', 1, 20000)

--Trigger để cập nhật tổng số lượng sản phẩm trong kho sau khi thêm hóa đơn nhập:
GO
CREATE TRIGGER CapNhatSoLuongTonKhoSauKhiNhap
ON CHITIETHOADONNHAP
AFTER INSERT
AS
BEGIN
	DECLARE @MaSP INT, @SoLuong INT;
	SELECT @MaSP = MaSP, @SoLuong = SoLuong
	FROM inserted;

	UPDATE HANGTRONGKHO
	SET SoLuongTonKho = SoLuongTonKho + @SoLuong
	WHERE MaSP = @MaSP;
END
insert into CHITIETHOADONNHAP(MaHDNhap, MaSP, SoLuong, DonGia, TienGiam) values (1, 19, 2, 100000, 0)
select * from HANGTRONGKHO where MaSP = 19

-- Hãy viết 1 trigger nếu thêm 1 chi tiết hóa đơn xuất thì sẽ được cộng thêm vào tổng tiền của hóa đơn xuất

go
create trigger CapNhat_TienHoaDonXuat
on CHITIETHOADONXUAT
after insert 
as
	begin
		declare @MaHDXuat int, @Tien money
		select @MaHDXuat = inserted.MaHDXuat, @Tien = (inserted.SoLuong * inserted.DonGia ) - inserted.TienGiam
		from inserted

		update HOADONXUAT
		set TongTien = TongTien + @Tien,
		SoLuongMon = SoLuongMon + 1
		where MaHDXuat = @MaHDXuat
	end

insert into CHITIETHOADONXUAT(MaHDXuat, MaSP, SoLuong, DonGia, TienGiam) values (3, 19, 3, 200000, 0)
select * from HOADONXUAT where MaHDXuat = 3