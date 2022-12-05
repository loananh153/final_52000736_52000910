<?php
require('dbconn.php');
?>

<?php 
if ($_SESSION['RollNo']) {
    ?>

<!DOCTYPE html>
<html lang="en">

<head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Thông báo </title>
        <link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
        <link type="text/css" href="css/themes.css" rel="stylesheet">
        <link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
        <link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600'
            rel='stylesheet'>
    </head>
    <body>
    <div class="navbar navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-inverse-collapse">
                        <i class="icon-reorder shaded"></i></a><a class="brand" href="index.php" style = "font-family: Cursive; Color: #FF4C29"><img src="images/logo.png" style = "width: 50px; margin-right:10px"/>HỆ THỐNG THƯ VIỆN</a>
                    <div class="nav-collapse collapse navbar-inverse-collapse">
                        <ul class="nav pull-right">
                            <li class="nav-user dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <img src="images/avatar.png" class="nav-avatar" />
                                <b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="index.php">Tài khoản</a></li>
                                    <!--li><a href="#">Edit Profile</a></li>
                                    <li><a href="#">Account Settings</a></li-->
                                    <li class="divider"></li>
                                    <li><a href="logout.php">Đăng xuất</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <!-- /.nav-collapse -->
                </div>
            </div>
            <!-- /navbar-inner -->
        </div>
        <!-- /navbar -->
        <div class="wrapper">
            <div class="container">
                <div class="row">
                    <div class="span3">
                        <div class="sidebar">
                            <ul class="widget widget-menu unstyled">
                                <li class="active"><a href="index.php"><i class="menu-icon icon-home"></i>Trang Chủ
                                </a></li>
                                 <li><a href="message.php"><i class="menu-icon icon-inbox"></i>Thông báo</a>
                                </li>
                                <li><a href="book.php"><i class="menu-icon icon-book"></i>Sách</a></li>
                                <li><a href="history.php"><i class="menu-icon icon-tasks"></i>Lịch sử mượn sách</a></li>
                                <li><a href="current.php"><i class="menu-icon icon-list"></i>Sách đang mượn</a></li>
                            </ul>
                            <ul class="widget widget-menu unstyled">
                                <li><a href="logout.php"><i class="menu-icon icon-signout"></i>Đăng xuất </a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="span9">
                        <table class="table" id = "tables">
                                  <thead>
                                    <tr>
                                      <th>Thông báo</th>
                                      <th>Ngày</th>
                                      <th>Thời gian</th>
                                    </tr>
                                  </thead>
                                  <tbody>
                                    <?php
                                    $rollno=$_SESSION['RollNo'];
                            $sql="select * from LMS.message where RollNo='$rollno' order by Date DESC,Time DESC";
                            $result=$conn->query($sql);
                            while($row=$result->fetch_assoc())
                            {
                                $msg=$row['Msg'];
                                $date=$row['Date'];
                                $time=$row['Time'];
                            
                           
                            ?>
                                    <tr>
                                      <td><?php echo $msg ?></td>
                                      <td><?php echo $date ?></td>
                                      <td><?php echo $time ?></td>
                                    </tr>
                               <?php } ?>
                               </tbody>
                                </table>
                            </div>
                    <!--/.span3-->
                    
                    <!--/.span9-->
                </div>
            </div>
            <!--/.container-->
        </div>
<div class="footer">
            <div class="container">
                <b class="copyright">&copy; 2022 HỆ THỐNG THƯ VIỆN</b>
            </div>
        </div>
        <!--/.wrapper-->
        <script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
        <script src="scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
        <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="scripts/flot/jquery.flot.js" type="text/javascript"></script>
        <script src="scripts/flot/jquery.flot.resize.js" type="text/javascript"></script>
        <script src="scripts/datatables/jquery.dataTables.js" type="text/javascript"></script>
        <script src="scripts/common.js" type="text/javascript"></script>
      
    </body>

</html>

<?php }
else {
    echo "<script type='text/javascript'>alert('Access Denied!!!')</script>";
} ?>