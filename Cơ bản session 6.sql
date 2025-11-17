-- 1. Tạo cơ sở dữ liệu
CREATE DATABASE QuanLyThuVien;
-- 2. Sử dụng cơ sở dữ liệu
USE QuanLyThuVien;
-- 3. Tạo bảng TacGia
CREATE TABLE TacGia (
    MaTacGia INT PRIMARY KEY AUTO_INCREMENT,
    TenTacGia VARCHAR(100) NOT NULL,
    QuocTich VARCHAR(50)
);
-- 4. Tạo bảng DocGia
CREATE TABLE DocGia (
    MaDocGia INT PRIMARY KEY AUTO_INCREMENT,
    TenDocGia VARCHAR(100) NOT NULL,
    DiaChi VARCHAR(255),
    SoDienThoai VARCHAR(15) UNIQUE
);
-- Chèn dữ liệu vào bảng TacGia
INSERT INTO TacGia (TenTacGia, QuocTich) VALUES
('Nguyễn Nhật Ánh', 'Việt Nam'),
('J.K. Rowling', 'Anh'),
('Haruki Murakami', 'Nhật Bản'),
('Dale Carnegie', 'Mỹ');
-- Chèn dữ liệu vào bảng DocGia
INSERT INTO DocGia (TenDocGia, DiaChi, SoDienThoai) VALUES
('Nguyễn Văn A', '123 Đường ABC, Hà Nội', '0901234567'),
('Trần Thị B', '456 Đường XYZ, TP.HCM', '0912345678'),
('Lê Văn C', '789 Đường LMN, Đà Nẵng', '0923456789'),
('Phạm Thị D', '101 Đường QRS, Hà Nội', '0934567890'),
('Hoàng Văn E', '202 Đường UVW, Cần Thơ', '0945678901');
-- 1. Lấy danh sách tất cả các tác giả có quốc tịch "Việt Nam"
SELECT *
FROM TacGia
WHERE QuocTich = 'Việt Nam';
-- 2. Lấy danh sách các độc giả có địa chỉ ở "Hà Nội"
-- Sử dụng LIKE để tìm kiếm chuỗi "Hà Nội" trong cột DiaChi, phù hợp với dữ liệu mẫu bạn đã nhập.
SELECT *
FROM DocGia
WHERE DiaChi LIKE '%Hà Nội%';
-- 3. Hiển thị TenDocGia và SoDienThoai của tất cả độc giả
SELECT TenDocGia, SoDienThoai
FROM DocGia;
-- Cập nhật địa chỉ cho độc giả Trần Thị B
UPDATE DocGia
SET DiaChi = '200 Đường XYZ, TP. Thủ Đức'
WHERE MaDocGia = 2;
-- Xóa tác giả Haruki Murakami
DELETE FROM TacGia
WHERE MaTacGia = 3;