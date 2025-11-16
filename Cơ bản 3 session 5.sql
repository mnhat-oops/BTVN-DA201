-- 1. Liệt kê tất cả các đơn hàng có tổng giá trị lớn hơn 1,000,000
SELECT *
FROM DonHang
WHERE TongGiaTri > 1000000;
-- 2. Liệt kê tất cả các đơn hàng được giao đến 'TP. Hồ Chí Minh'
SELECT *
FROM DonHang
WHERE ThanhPhoGiaoHang = 'TP. Hồ Chí Minh';
-- 3. Liệt kê tất cả các đơn hàng, sắp xếp theo TongGiaTri từ cao xuống thấp (giảm dần)
SELECT *
FROM DonHang
ORDER BY TongGiaTri DESC;
-- 4. Liệt kê danh sách các thành phố (duy nhất, không trùng lặp) đã có đơn hàng
SELECT DISTINCT ThanhPhoGiaoHang
FROM DonHang;