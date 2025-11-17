-- 1. Thêm cột TrangThai vào bảng Sach
ALTER TABLE Sach
ADD COLUMN TrangThai VARCHAR(50);
-- 2. Cập nhật TrangThai thành "Còn hàng" cho sách xuất bản trước năm 2000
UPDATE Sach
SET TrangThai = 'Còn hàng'
WHERE NamXuatBan < 2000;
-- 3. Cập nhật TrangThai thành "Mới nhập" cho sách xuất bản từ năm 2000 trở về sau
UPDATE Sach
SET TrangThai = 'Mới nhập'
WHERE NamXuatBan >= 2000;
-- (Tùy chọn) Kiểm tra kết quả
SELECT MaSach, TenSach, NamXuatBan, TrangThai
FROM Sach;
-- Chèn dữ liệu vào bảng PhieuMuon
INSERT INTO PhieuMuon (MaDocGia, MaSach, NgayMuon, NgayTra) VALUES
(1, 1, '2024-01-10', '2024-01-25'),
(2, 3, '2024-02-15', NULL),
(1, 2, '2024-03-01', '2024-03-15'),
(3, 4, '2024-03-05', NULL),
(5, 5, '2024-04-20', '2024-05-01');
-- 1. Tìm các phiếu mượn của độc giả có MaDocGia là 1
SELECT *
FROM PhieuMuon
WHERE MaDocGia = 1;
-- 2. Liệt kê tất cả các phiếu mượn sách chưa được trả
SELECT *
FROM PhieuMuon
WHERE NgayTra IS NULL;