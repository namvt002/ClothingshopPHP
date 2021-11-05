<?php
        session_start();
        if(!isset($_SESSION['admin'])){
            header("Location:./login.php");
        }

        require 'database_connection.php';
        //session_start();
        if(isset($_SESSION['admin'])){
            $sql = "SELECT * FROM nhan_vien WHERE NV_MA = '" . $_SESSION['admin'] . "'";
            $result = $con->query($sql);
            $row = $result->fetch_assoc();// tra ve mot dong ket qua
        }

        if(isset($_POST['logout'])){
            unset($_SESSION['admin']);
            header("Location:./login.php");
        }

        
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin</title>
    <link rel="stylesheet" href="./css/admin.css">
    <link rel="stylesheet" href="./font-icon/themify-icons/themify-icons.css">
    <link rel="stylesheet" href="./font-icon/fontawesome/css/all.min.css">
</head>
<body>
    <div class="wrapper">
        <div class="header-tab">
            <ul class="navbar-list">
                <li class="navbar-item ">
                    <img src="./img/icons/A & T.jpg" id="logo">    
                </li>
            </ul>

            <ul class="navbar-list">
                <li class="navbar-items navbar-item-separate" >
                    <h3> <i class="ti-user"></i> 
                        Admin: <?php echo $row['USER_NAME']; ?> 
                    </h3>
                </li>
                <form action="" method="post">
                    <li class="navbar-items"> 
                        <input  type="submit" value="Đăng xuất" name="logout">
                    </li>
                </form>
                
            </ul> 
        </div>
        <div class="tab-container">
            <div class="tab-header">
                <button class="btn active" data-target-tab="#order">
                    <a><i class="ti-receipt"></i> Đơn hàng</a>
                </button>
                <button class="btn " data-target-tab="#product">
                    <a>Sản phẩm</a>
                </button>
                <button class="btn" data-target-tab="#detail-product">
                    <a>Chi tiết sản phẩm</a>
                </button>
                <button class="btn" data-target-tab="#ware">
                    <a><i></i> Kho</a>
                </button>
                <button class="btn" data-target-tab="#import">
                    <a>Nhập hàng</a>
                </button>
                <button class="btn" data-target-tab="#statistic">
                    <a>Thống kê</a>
                </button>
                <button class="btn" data-target-tab="#Promotion">
                    <a>Khuyến mãi</a>
                </button>
            </div>
        </div>

        <div class="tab-body">
            <div class="tab-content active" id="order">

                <form action="" method="POST">
                    <table class="tabl">
                        <tr>
                            <th class="col-9">Mã ĐH</th>
                            <th class="col-9">Sản Phẩm</th>
                            <th class="col-9">SL</th>
                            <th class="col-9">Tổng giá trị</th>
                            <th class="col-9">Ngày Đặt </th>
                            <th class="col-9">Hình thức <br> Thanh Toán</th>
                            <th class="col-9">Khách Hàng</th>
                            <th class="col-9">Trạng Thái</th>
                            <th class="col-9">Thao Tác</th>
                        </tr>
                        <tr>
                            <td class="col-9"></td>
                            <td class="col-9"></td>
                            <td class="col-9"></td>
                            <td class="col-9"></td>
                            <td class="col-9"><input type="date" name="date" ></td>
                            <td class="col-9"></td>
                            <td class="col-9"></td>
                            <td class="col-9"></td>
                            <td class="col-9"></td>
                        </tr>
                    </table>   
                </form>
            </div>


            <div class="tab-content" id="product">
                <a href="./admin-add-product.php"><input class="btn-add-product" type="button" value="Thêm Sản Phẩm"> </a>
                <table class="tabl">
                    <tr>
                        <th class="col-9">Mã Sản Phẩm</th>
                        <th class="col-9">Loại Sản Phẩm</th>
                        <th class="col-9">Tên</th>
                        <th class="col-9">Ảnh</th>
                        <th class="col-9">Giá</th>
                        <th class="col-9">Thao Tác</th>
                        
                    </tr>
                    <tr>
                        <td class="col-9"></td>
                        <td class="col-9"></td>
                        <td class="col-9"></td>
                        <td class="col-9"></td>
                        <td class="col-9"></td>
                        <td class="col-9"></td>   
                    </tr>
                </table>
            </div>

            <div class="tab-content" id="detail-product">
                <table class="tabl">
                    <tr>
                        <th class="col-9">Mã SP</th>
                        <th class="col-9">Tên</th>
                        <th class="col-9">Ảnh</th>
                        <th class="col-9">Giá</th>
                        <th class="col-9">Chi Tiết <br> Sản Phẩm</th>
                        <th class="col-9">Màu</th>
                        <th class="col-9">Size</th>
                        <th class="col-9">Thao Tác</th> 
                    </tr>
                    <tr>
                        <td class="col-9"></td>
                        <td class="col-9"></td>
                        <td class="col-9"></td>
                        <td class="col-9"></td>
                        <td class="col-9"></td>
                        <td class="col-9"></td>
                        <td class="col-9"></td>
                        <td class="col-9"></td>
                        
                    </tr>
                </table>   
            </div>

            <div class="tab-content" id="ware">
                <table class="tabl">
                    <tr>
                        <th class="col-9">Mã Sản Phẩm</th>
                        <th class="col-9">Tên Sản Phẩm</th>
                        <th class="col-9">Màu</th>
                        <th class="col-9">Size</th>
                        <th class="col-9">Số Lượng</th>
                        <th class="col-9">Thao Tác</th> 
                    </tr>
                    <tr>
                        <td class="col-9"></td>
                        <td class="col-9"></td>
                        <td class="col-9"></td>
                        <td class="col-9"></td>
                        <td class="col-9"></td>
                        <td class="col-9"></td>
                        
                    </tr>
                </table>   
            </div>

            <div class="tab-content" id="import">
                <table class="tabl">
                    <tr>
                        <th class="col-9">Mã SP</th>
                        <th class="col-9">Tên Sản Phẩm</th>
                        <th class="col-9">Ngày</th>
                        <th class="col-9">Màu</th>
                        <th class="col-9">Size</th>
                        <th class="col-9">Số Lượng</th>
                        <th class="col-9">Thao Tác</th>
                    </tr>
                    <tr>
                        <td class="col-9"></td>
                        <td class="col-9"></td>
                        <td class="col-9"></td>
                        <td class="col-9"></td>
                        <td class="col-9"></td>
                        <td class="col-9"></td>
                        <td class="col-9"></td>
                    </tr>
                </table>   
            </div>
            <div class="tab-content" id="statistic">
                <table class="tabl">
                    <tr>
                        <th class="col-9">Mã SP</th>
                        <th class="col-9">Tên Sản Phẩm</th>
                        <th class="col-9">Ngày</th>
                        <th class="col-9">Màu</th>
                        <th class="col-9">Size</th>
                        <th class="col-9">Số Lượng</th>
                        <th class="col-9">Size</th>
                    </tr>
                    <tr>
                        <td class="col-9"></td>
                        <td class="col-9"></td>
                        <td class="col-9"></td>
                        <td class="col-9"></td>
                        <td class="col-9"></td>
                        <td class="col-9"></td>
                        <td class="col-9"></td>
                    </tr>
                </table>   
            </div>
            <?php 
                    $sqlkm = "SELECT ct.CTKM_TEN, ct.CTKM_NGAYBD, ct.CTKM_NGAYKT, sp.SP_TEN, ct.CTKM_PHANTRAM
                                FROM san_pham AS sp
                                    JOIN chi_tiet_khuyen_mai AS ct ON sp.SP_MA = ct.SP_MA;";
                    $resultkm = $con->query($sqlkm);

            ?>
            <div class="tab-content" id="Promotion">
                <a href="./admin-add-promotion.php"><input class="btn-add-product" type="button" value="Thêm khuyến mãi"> </a>
                <table class="tabl">
                    <tr>
                        <th class="col-9">Tên khuyến mãi</th>
                        <th class="col-9">Ngày bắt đầu</th>
                        <th class="col-9">Ngày kết thúc</th>
                        <th class="col-9">Tên sản phẩm khuyến mãi</th>
                        <th class="col-9">Phần trăm khuyến mãi</th>
                    </tr>

                    <?php 
                        while($rowkm = $resultkm->fetch_assoc()){
                            echo "<tr>";
                            echo " <td class='col-9'> ". $rowkm['CTKM_TEN'] ." </td>";
                            echo " <td class='col-9'> ". $rowkm['CTKM_NGAYBD'] ." </td>";
                            echo " <td class='col-9'> ". $rowkm['CTKM_NGAYKT'] ." </td>";
                            echo " <td class='col-9'> ". $rowkm['SP_TEN'] ." </td>";
                            echo " <td class='col-9'> ". $rowkm['CTKM_PHANTRAM'] ." </td>";
                            echo " </tr>";
                        }
                        $result->free();
                    ?>
                      
                        
                   
                </table>   
            </div>
           
    </div>


    <script src="./js/product.js"></script>
    
</body>
</html>