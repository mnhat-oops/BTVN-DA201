-- 1. Cập nhật Giá bán của sách "Tư Duy Nhanh và Chậm" (mã SKD04) thành 180000
UPDATE Sach
SET GiaBan = 180000
WHERE MaSach = 'SKD04';
-- 2. Sửa Tên Tác giả của sách "Nhà Giả Kim" (mã SVK02) thành 'Paulo Coelho'
UPDATE Sach
SET TacGia = 'Paulo Coelho'
WHERE MaSach = 'SVK02';
-- 3. Xóa sách "Đắc Nhân Tâm" (mã SGK01) khỏi hệ thống
DELETE FROM Sach
WHERE MaSach = 'SGK01';
-- 4. Hiển thị toàn bộ danh sách sản phẩm còn lại để xác nhận
SELECT * FROM Sach;