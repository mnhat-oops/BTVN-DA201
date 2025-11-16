-- 1. Thêm khách hàng mới: Phạm Thị Dung (Mã 4)
INSERT INTO KhachHang (MaKH, HoTen, Email, SoDienThoai, NgayDangKy) VALUES
(4, 'Phạm Thị Dung', 'dung.pham@email.com', '0934567890', '2023-11-02');
-- 2. Thêm khách hàng mới: Hoàng Văn Em (Mã 5)
INSERT INTO KhachHang (MaKH, HoTen, Email, SoDienThoai, NgayDangKy) VALUES
(5, 'Hoàng Văn Em', 'em.hoang@email.com', '0945678901', '2023-11-03');
-- 3. Hiển thị toàn bộ thông tin của tất cả khách hàng để kiểm tra
SELECT * FROM KhachHang;
-- 4. Tạo danh sách chỉ bao gồm HoTen và Email để gửi email quảng cáo
SELECT HoTen, Email FROM KhachHang;