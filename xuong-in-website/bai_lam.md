# BÀI LÀM – HACKATHON 02

- **Mã đề:** 06
- **Họ tên:** NGUYỄN-CÔNG-VINH
- **Lớp:**cntt3
- **Link repository:** https://github.com/vinhduy200608-wq/CNTT3-HACKATHON-CUOI-MON.git
- **Hệ điều hành (Windows/macOS):** macos

## 4.2. Thao tác máy tính cơ bản bằng CLI

### Các lệnh đã chạy

```shell
pwd
ls -la
mv /Users/macbook/Downloads/xuong-in-website\ /yeu_cau_khach_hang.txt  /Users/macbook/Downloads/xuong-in-website\ /docs  
 mkdir backup
cp /Users/macbook/Downloads/xuong-in-website\ /data/don_in_thang_6.xlsx /Users/macbook/Downloads/xuong-in-website\ /backup  
rm /Users/macbook/Downloads/xuong-in-website\ /temp_606.tmp  
 cd logs&&ls -la&&cd ..
```

### Kết quả liệt kê toàn bộ dự án (Windows: Get-ChildItem -Recurse -Force; macOS: ls -aR)

```text
.			bai_lam.md		logs
..			data			temp_606.tmp
.DS_Store		docs			web
.env			evidence		yeu_cau-khach-hang.txt

./data:
.			..			don_in_thang_6.xlsx

./docs:
.	..

./evidence:
.	..

./logs:
.		..		order.log

./web:
.		app.js		index.html
..		images		style.css

./web/images:
.			..			logo-printnow.png
```

## 4.3. Lọc log truy cập website

### a) Lệnh lọc các dòng status=500

```shell
grep "status=500" logs/order.log > logs/loi_500.txt

```

### 2 dòng đầu tiên trong logs/loi_500.txt

```text
(2026-06-28 08:15:01 POST /api/thanh-toan status=500
2026-06-28 08:34:07 POST /api/tai-file status=500

```

### b) Lệnh đếm số dòng status=404 và kết quả

```shell
grep "status=404" logs/order.log | Wc -l 

```

```text
4

```

## 4.4. Chạy script tong_hop (.ps1 hoặc .sh)

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

```shell
Bash tong_hop.sh

```

### Nội dung file logs/tong_hop.txt

```text
=== BAO CAO SU CO WEBSITE ===
2026-06-28 08:08:39 GET /mau-tet-cu status=404
2026-06-28 08:19:12 GET /images/poster-2.jpg status=404
2026-06-28 08:23:23 GET /images/poster-2.jpg status=404
2026-06-28 08:54:24 GET /tin-tuc status=404
       6


```

## 4.5. README.md và bảo vệ thông tin bí mật

> README.md, .gitignore và .env.example được chấm trực tiếp trên file ở gốc dự án. Đánh dấu `[x]` vào các mục đã làm để tự kiểm tra.

- [x] README.md: Heading 1, mô tả có **in đậm** và *in nghiêng*, bảng, code block, task list, blockquote
- [x] .gitignore có dòng `.env` (tên file đúng, không có đuôi .txt)
- [x] .env.example có đủ tên biến, giá trị để trống (tên file đúng, không có đuôi .txt)

## 4.6. Kiểm tra trang web bằng DevTools (F12) và báo cáo lỗi

### Bảng lỗi

| STT | Tab DevTools phát hiện lỗi | Tên file hoặc thông báo lỗi | Cách khắc phục |
| --- | --- | --- | --- |
| 1 |  |  |  |
| 2 |  |  |  |

> Ảnh chụp màn hình lưu trong thư mục `evidence/` (network.png, console.png).

### Báo cáo lỗi gửi trưởng nhóm

- **Context:** tôi là sv năm 1 và tôi chưa bt fix lỗi
- **Expected:** bây giờ trang web đang ko hiện bảng
- **Actual:** dữ liệu cho thấy đang có lỗi ở app.js ở dòng 18
- **Log:** hiện lỗi bảng ko lên pp.js:18 Uncaught ReferenceError: hienThiBangGia San Pham In is not

### Câu tìm kiếm Google

```text
site:stakoverflow.com"app.js:18 Uncaught ReferenceError: hienThiBangGia San Pham In is not"

```

## 4.7. Excel

> Phần Excel được chấm trực tiếp trên file `data/don_in_thang_6.xlsx`, không cần ghi vào đây.
