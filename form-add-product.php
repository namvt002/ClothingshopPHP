<?php      
    require 'database_connection.php';
    if (isset($_POST['btn-upload'])){
        if (isset($_FILES['img'])){
            if ($_FILES['img']['error'] > 0)
            {
                echo 'File tải lên bị lỗi';
            }
            else{
                move_uploaded_file($_FILES['img']['tmp_name'], 'upload/'.$_FILES['img']['name']);
                echo 'File tải lên thành công';
            }
        }
        else{
            echo 'Bạn chưa chọn file tải lên';
        }
    }
?>