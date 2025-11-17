-- Tạo bảng Sach
CREATE TABLE Sach (
    MaSach INT PRIMARY KEY AUTO_INCREMENT,
    TenSach VARCHAR(200) NOT NULL,
    NamXuatBan INT,
    MaTacGia INT,
    FOREIGN KEY (MaTacGia) REFERENCES TacGia(MaTacGia)
);
-- Chèn dữ liệu vào bảng Sach
INSERT INTO Sach (TenSach, NamXuatBan, MaTacGia) VALUES
('Cho tôi xin một vé đi tuổi thơ', 2008, 1),
('Mắt biếc', 1990, 1),
('Harry Potter và Hòn đá Phù thủy', 1997, 2),
('Harry Potter và Phòng chứa Bí mật', 1998, 2),
('Đắc nhân tâm', 1936, 4);
-- 1. Sách xuất bản từ 1990 đến 2000
SELECT *
FROM Sach
WHERE NamXuatBan >= 1990 AND NamXuatBan <= 2000;
-- 2. Sách có tên là 'Harry Potter và Hòn đá Phù thủy' HOẶC 'Harry Potter và Phòng chứa Bí mật' (Sử dụng IN)
SELECT *
FROM Sach
WHERE TenSach IN ('Harry Potter và Hòn đá Phù thủy', 'Harry Potter và Phòng chứa Bí mật');
-- 3. Sách của tác giả MaTacGia = 1 VÀ xuất bản sau năm 2000
SELECT *
FROM Sach
WHERE MaTacGia = 1 AND NamXuatBan > 2000;
-- 1. Sắp xếp Sách theo Năm Xuất Bản (Mới nhất -> Cũ nhất)
SELECT *
FROM Sach
ORDER BY NamXuatBan DESC;
-- 2. Sắp xếp Độc Giả theo Tên (A-Z)
SELECT *
FROM DocGia
ORDER BY TenDocGia ASC;
-- 3. Tạo bảng PhieuMuon
CREATE TABLE PhieuMuon (
    MaPhieuMuon INT PRIMARY KEY AUTO_INCREMENT,
    NgayMuon DATE NOT NULL,
    NgayTra DATE,
    MaDocGia INT NOT NULL,
    MaSach INT NOT NULL,
    FOREIGN KEY (MaDocGia) REFERENCES DocGia(MaDocGia),
    FOREIGN KEY (MaSach) REFERENCES Sach(MaSach)
);