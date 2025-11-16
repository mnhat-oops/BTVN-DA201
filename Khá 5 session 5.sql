-- 1. Xác định Khách hàng VIP: TongChiTieu > 10,000,000 VÀ SoDonHang >= 10 (Sắp xếp giảm dần theo TongChiTieu)
SELECT MaKH, HoTen, TongChiTieu, SoDonHang, LanCuoiMuaHang
FROM KhachHangThanThiet
WHERE TongChiTieu > 10000000 AND SoDonHang >= 10
ORDER BY TongChiTieu DESC;
-- 2. Khách hàng Mới Tiềm năng ở Hà Nội: ThanhPho = 'Hà Nội' VÀ SoDonHang < 5 VÀ TongChiTieu > 2,000,000
SELECT MaKH, HoTen, TongChiTieu, SoDonHang, ThanhPho
FROM KhachHangThanThiet
WHERE ThanhPho = 'Hà Nội' AND SoDonHang < 5 AND TongChiTieu > 2000000;
-- 3. Khách hàng cần "Hâm nóng": LanCuoiMuaHang trước ngày 2023-09-01
SELECT MaKH, HoTen, LanCuoiMuaHang, TongChiTieu
FROM KhachHangThanThiet
WHERE LanCuoiMuaHang < '2023-09-01';
-- 4. Cập nhật trạng thái (giả định) cho khách hàng cần hâm nóng
UPDATE KhachHangThanThiet
SET ThanhPho = 'Khách hàng cũ'
WHERE LanCuoiMuaHang < '2023-09-01';