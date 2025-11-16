-- 1. Sửa lỗi Tên Nhà Cung cấp: 'Sunhouse Group' thành 'Tập đoàn Sunhouse'
UPDATE SanPham
SET NhaCungCap = 'Tập đoàn Sunhouse'
WHERE NhaCungCap = 'Sunhouse Group';
-- 2. Xác định Hàng Tồn kho Lâu (Đồ bếp VÀ nhập trước 2023-05-01)
SELECT MaSP, TenSP, NgayNhapKho, DanhMuc
FROM SanPham
WHERE DanhMuc = 'Đồ bếp' AND NgayNhapKho < '2023-05-01';
-- 3. Cập nhật Trạng thái Xả hàng Tồn kho cho các sản phẩm ở nhiệm vụ 2
UPDATE SanPham
SET TrangThai = 'Xả hàng tồn kho'
WHERE DanhMuc = 'Đồ bếp' AND NgayNhapKho < '2023-05-01';
-- 4. Báo cáo Hàng Tồn kho Cần Xử lý ('Xả hàng tồn kho' HOẶC SoLuongTon < 10), sắp xếp tăng dần theo SoLuongTon
SELECT MaSP, TenSP, SoLuongTon, TrangThai
FROM SanPham
WHERE TrangThai = 'Xả hàng tồn kho' OR SoLuongTon < 10
ORDER BY SoLuongTon ASC;