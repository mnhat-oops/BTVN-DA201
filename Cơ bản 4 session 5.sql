-- 1. Tìm nhân viên thuộc phòng 'Kinh doanh' VÀ có năm sinh trước năm 1996
SELECT *
FROM NhanVien
WHERE PhongBan = 'Kinh doanh' AND NamSinh < 1996;
-- 2. Tìm nhân viên là 'Trưởng phòng' HOẶC là 'Trưởng nhóm'
SELECT *
FROM NhanVien
WHERE ChucVu = 'Trưởng phòng' OR ChucVu = 'Trưởng nhóm';
-- 3. Tìm tất cả nhân viên KHÔNG thuộc phòng 'Kỹ thuật'
SELECT *
FROM NhanVien
WHERE PhongBan != 'Kỹ thuật';
-- 4. Tìm tất cả nhân viên thuộc phòng 'Marketing' VÀ có chức vụ là 'Trưởng phòng'
SELECT *
FROM NhanVien
WHERE PhongBan = 'Marketing' AND ChucVu = 'Trưởng phòng';