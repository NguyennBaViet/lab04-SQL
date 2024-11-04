--Bài 1:
--1.
SELECT MaMH, TenMH, Sotiet FROM [dbo].[MonHoc]
GO
--2.
SELECT MaSV, HoSV, TenSV, HocBong FROM [dbo].[SinhVien] ORDER BY MaSV ASC
GO
--3.
SELECT MaSV, TenSV, Phai, NgaySinh FROM  [dbo].[SinhVien] ORDER BY TenSV
GO
--4.
SELECT  CONCAT(HOSV,' ',TENSV) AS N'Họ tên sinh viên', NgaySinh,  HocBong FROM [dbo].[SinhVien] ORDER BY NgaySinh ASC, HOCBONG DESC
GO
--5.
SELECT MaMH, TenMH, Sotiet FROM [dbo].[MonHoc]
	WHERE TenMH LIKE 'T%'
--6.
SELECT  CONCAT(HOSV,' ',TENSV) AS N'Họ tên sinh viên', Phai, NgaySinh FROM [dbo].[SinhVien]
	WHERE TENSV LIKE N'%i'
--7.
SELECT MaKH, TenKH FROM [dbo].[Khoa]
	WHERE TENKH LIKE '_n%'
--8.
SELECT MaSV, HoSV, TenSV, Phai, NgaySinh, NoiSinh, MaKH, HocBong, DiemTrungBinh FROM [dbo].[SinhVien]
	WHERE HoSV LIKE N'%Thị%'
--9.
SELECT MaSV,CONCAT(HOSV,' ',TENSV) AS N'Họ tên sinh viên', Phai ,HocBong FROM  [dbo].[SinhVien] 
	WHERE TENSV LIKE '[a-m]%'
--10.
SELECT MaSV,CONCAT(HOSV,' ',TENSV) AS N'Họ tên sinh viên', Phai ,HocBong FROM  [dbo].[SinhVien] 
	WHERE TENSV LIKE '[a-m]%' ORDER BY 2 ASC
--11.
SELECT  MaSV,CONCAT(HOSV,' ',TENSV) AS N'Họ tên sinh viên', NgaySinh, MaKH FROM [dbo].[SinhVien]
	WHERE MaKH LIKE '%AV%'
--13.
SELECT MaSV,CONCAT(HOSV,' ',TENSV) AS N'Họ tên sinh viên', MaKH, HocBong, DiemTrungBinh FROM SINHVIEN
	WHERE HOCBONG >= 500000
--14.
SELECT CONCAT(HOSV,' ',TENSV) AS N'Họ tên sinh viên', NgaySinh, MaKH, HocBong FROM SINHVIEN
	WHERE NgaySinh = '19871220'
--15.
SELECT CONCAT(HOSV,' ',TENSV) AS N'Họ tên sinh viên', NgaySinh, NoiSinh, HocBong FROM SINHVIEN
	WHERE NgaySinh >= '19771220' ORDER BY NgaySinh DESC
--16.
SELECT CONCAT(HOSV,' ',TENSV) AS N'Họ tên sinh viên', MaKH, NoiSinh, HocBong FROM SINHVIEN
	WHERE NOISINH LIKE N'Tp. HCM' AND HocBong >= 100000
--17.
SELECT  MaSV, Phai, MaKH FROM [dbo].[SinhVien]
	WHERE MaKH LIKE '%AV%' OR MaKH LIKE '%TR%'
--18.
SELECT MaSV, NoiSinh, NgaySinh, HocBong FROM SinhVien
	WHERE NgaySinh >= '19860101' AND NGAYSINH <= '19920605'
--19.
SELECT MaSV, NgaySinh, Phai, MaKH FROM SinhVien
	WHERE HocBong >= 100000 AND HocBong <= 800000
--20.
SELECT MaMH, TenMH, Sotiet FROM MonHoc
	WHERE Sotiet >= 40 AND Sotiet <= 60
--21.
SELECT  MaSV,CONCAT(HOSV,' ',TENSV) AS N'Họ tên sinh viên',PHAI FROM SinhVien
	WHERE Phai = 0  AND MaKH LIKE '%AV%'
--22.
SELECT HoSV, TenSV, NoiSinh, NgaySinh FROM SinhVien
	WHERE NgaySinh > '19900101' AND NoiSinh LIKE N'Hà Nội'
--23.
SELECT MaSV, HoSV, TenSV, Phai, NgaySinh, NoiSinh, MaKH, HocBong, DiemTrungBinh FROM SinhVien
	WHERE Phai = 1 AND TenSV LIKE '%n%'
--24.
SELECT MaSV, HoSV, TenSV, Phai, NgaySinh, NoiSinh, MaKH, HocBong, DiemTrungBinh FROM SinhVien
	WHERE Phai = 0 AND NgaySinh > '19860530'
--25.
SELECT CONCAT(HOSV,' ',TENSV) AS N'Họ tên sinh viên',NGAYSINH ,
	CASE PHAI WHEN 0 THEN N'Nam'
			  WHEN 1 THEN N'Nữ'
			  ELSE N'Khác' END AS PHAI
	FROM SinhVien

--26.
SELECT MaSV, (YEAR(GETDATE()) - YEAR(NgaySinh)) AS N'Tuổi', NoiSinh, MaKH
FROM SinhVien
--27.
SELECT CONCAT(HoSV,' ', TenSV) AS N'Họ tên', (YEAR(GETDATE()) - YEAR(NgaySinh)) AS N'Tuổi', HocBong
FROM SinhVien
	WHERE N'Tuổi' >= '20'

--28.
SELECT CONCAT(HoSV, ' ', TenSV) AS N'Họ tên', (YEAR(GETDATE()) - YEAR(NgaySinh)) AS N'Tuổi',TenKH
FROM SinhVien,Khoa
	WHERE N'Tuổi' BETWEEN '20' AND '30'
--Bài 2
--1.
SELECT CONCAT(HoSV,' ', TenSV) AS N'Họ tên',IIF(PHAI=1,N'Nữ',IIF(PHAI = 0,N'Nam',N'Khác')),(YEAR(GETDATE()) - YEAR(NgaySinh)) AS N'Tuổi', MaKH
FROM SinhVien ORDER BY N'Tuổi' DESC

--2.
SELECT CONCAT(HoSV,' ', TenSV) AS N'Họ tên',Phai, NgaySinh
FROM SinhVien
	WHERE NgaySinh BETWEEN '1994-02-01' AND '1994-02-28'

--3.
SELECT MaSV, HoSV, TenSV, Phai, NgaySinh, NoiSinh, MaKH, HocBong, DiemTrungBinh FROM SinhVien
	ORDER BY NgaySinh DESC

--5.
SELECT CONCAT(HoSV,' ', TenSV) AS N'Họ tên' ,Diem
FROM SinhVien,Ketqua
	ORDER BY 1,2 

--6.
SELECT CONCAT(HoSV,' ', TenSV) AS N'Họ tên',IIF(PHAI=1,N'Nữ',IIF(PHAI = 0,N'Nam',N'Khác')),TenKH
FROM SinhVien,Khoa
	WHERE TenKH LIKE N'%Anh Văn%'

--7.
SELECT TenKH, CONCAT(HoSV,' ', TenSV) AS N'Họ tên',TenMH,Sotiet,Diem
FROM SinhVien,Khoa,Ketqua,MonHoc
	WHERE TenKH LIKE N'%Tin học%'

--8.

--BÀI 3
--1.
SELECT DISTINCT MaMH, TenMH, DiemTrungBinh
FROM SinhVien,MonHoc