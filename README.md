# README

 * Sau khi clone phần khung về thì không chỉnh sửa trực tiếp trên master mà phải tạo branch mới
    - Mỗi khi tạo một chức năng mới thì tạo một branch mới: 
        git checkout -b [mssv_ten_chuc_nang]   
    - Khi muốn sửa file migration và migrate lại thì dùng lệnh rake db:rollback hoặc rake db:reset

Controller
    - Login/logout (User) (Ai làm login thì sẽ đảm nhiệm luôn làm giao diện về sau) (Nam)
    - Edit Infos (Hùng)
    - Thêm sửa xóa tour && show tour(admin) || Like/delete/show like tour (user)  (Đạt)
    - Thêm sửa xóa review (admin && user) (Thế Anh)
    - Booking trang show danh sách đã book, và hiển thị chi tiết đơn hàng) (Thanh)

Database
    User: name, email, pass, avatar, admin(boolean)
    Tour: Title, time, price, image, description
    Review: user_id, review, tour_id
    Booking: thời gian book (cái này rails tự gen, lúc dùng chỉ cần gọi ra thôi), user_id, tour_id  

Readmore: https://docs.google.com/document/d/1lzwSXNuAsiPM83v0Du-KvGUEPu-ye3BLTr_nBvnfovI/edit?usp=sharing



