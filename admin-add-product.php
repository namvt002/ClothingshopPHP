
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thêm sản phẩm</title>
    <link rel="stylesheet" href="./css/add-product.css">
    <link rel="stylesheet" href="./font-icon/themify-icons/themify-icons.css">
    <link rel="stylesheet" href="./font-icon/fontawesome/css/all.min.css">
</head>
<body>

<?php

        require 'database_connection.php';
        //session_start();
       
         
            // require 'database_connection.php';
            // session_start();
            $sql ="SELECT * FROM loai_san_pham" ;
            $result = $con->query($sql);      

            $sqlNSX = "SELECT * FROM nha_san_xuat";
            $resultNSX = $con->query($sqlNSX);

?>
    
    <div class="wrapper">
        <div class="header-tab">
            <ul class="navbar-list">
                <li class="navbar-item ">
                    <img src="./img/icons/A & T.jpg" id="logo">    
                </li>
            </ul>

          
        </div>
        <div class="back-main">
            <a href="./admin.php" class="text-main"><i class="fas fa-bars"></i> Trang Chủ</a> 
        </div>
        <div class="tab-container">
            <div class="tab-body">
                <div class="panel-header">
                    <h3 class="text-heading" >Thêm mới sản phẩm</h3>
                </div>
                <div class="panel-body">
                    <form action="form-add-product.php" method="post" enctype="multipart/form-data">
                        <div class="form-group">
                            <label>Tên Sản Phẩm</label> <br>
                            <input type="text" name="name" class="form-control" placeholder="Nhập tên sản phẩm">
                        </div>
                        <div class="form-group">
                            <label>Loại sản phẩm</label> <br>
                            <select class='form-control' name='Loai_Hang'>
                                <option value="">---Chọn loại sản phẩm---</option>
                                <?php 
                               // echo " <select class='form-control'>";
                                    while($row = $result->fetch_assoc()){
                                        echo " <option value=". $row['LH_MA'] .">";
                                        echo   $row['LH_TEN'];
                                        echo " </option>" ;
                                    }
                                ?>
                            </select>
                        </div>
                        <div class="form-group">
                            <label >Ảnh</label> <br>
                            <input type="file" name="img"  placeholder="" id="img">
                            <input type="submit" name="btn-upload" value="Tải lên" id="up-img">
                        </div>
                        <div class="form-group">
                            <label >Nhà sản xuất</label> <br>
                            <select class='form-control' name='Nha_San_Xuat'>
                                <option value="">---Chọn loại nhà sản xuất---</option>
                                <?php 
                               // echo " <select class='form-control'>";
                                    while($rowNSX = $resultNSX->fetch_assoc()){ 
                                        echo " <option value=". $rowNSX['NSX_MA'] .">";
                                        echo   $rowNSX['NSX_TEN'];
                                        echo " </option>" ;
                                    }
                                ?>
                            </select>
                        </div>
                        <div class="form-group">
                            <label >Khuyến mãi</label> <br>
                            <input type="text" name="sale" class="form-control" placeholder="Khuyến mãi">
                        </div>
                        <div class="form-group">
                            <label >Giá</label> <br>
                            <input type="text" name="price" class="form-control" placeholder="Nhập giá">
                        </div>
                        <div class="form-group">
                            <input type="submit" value="Thêm" class="btn-add" name="submit_add">
                        </div>
                        <a href="./admin.php" class="btn-add">Trở về</a>
                    </form>
                </div>
                
            </div>
        </div>
    </div>

    
</body>
</html>