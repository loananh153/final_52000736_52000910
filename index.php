<?php
require('dbconn.php');
?>


<!DOCTYPE html>
<html>

<!-- Head -->
<head>

	<title>Quản Lý Thư Viện</title>

	<!-- Meta-Tags -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<meta name="keywords" content="Library Member Login Form Widget Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<!-- //Meta-Tags -->

<!-- Style --> <link rel="stylesheet" href="css/styles_login.css" type="text/css" media="all">


	<!-- Fonts -->
		<link href="//fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900" rel="stylesheet">
	<!-- //Fonts -->

</head>


<!-- Body -->
<body>

	<h1 style = "padding: 10px; Color: #f0ff1f;"><img src="images/logo.png" style = "width: 50px; margin-right:10px"/>QUẢN LÝ THƯ VIỆN</h1> 
	<div class="container1" >

		<div class="login">
			<h2 style = " font-weight: bold; font-family: Cursive; Color: #FF4C29">Đăng Nhập</h2>
			<form action="index.php" method="post">
				<input type="text" Name="RollNo" placeholder="Tên đăng nhập" required="">
				<input type="password" Name="Password" placeholder="Mật khẩu" required="">
			
			
			<div class="send-button">
				<!--<form>-->
					<input type="submit" name="signin"; value="Đăng Nhập">
				</form>
			</div>
			
			<div class="clear"></div>
		</div>
		<div class="clear"></div>
	</div>
	<div class="container2" >
		<div class="register">
			<h2 style = " font-weight: bold; font-family: Cursive; Color: #FF4C29">Đăng ký</h2>
			<form action="index.php" method="post">
				<input type="text" Name="Name" placeholder="Tên" required>
				<input type="text" Name="Email" placeholder="Email" required>
				<input type="password" Name="Password" placeholder="Mật Khẩu" required>
				<input type="text" Name="PhoneNumber" placeholder="Số điện thoại" required>
				<input type="text" Name="RollNo" placeholder="Tên đăng nhập" required="">
				
				<select name="Category" id="Category">
					<option value="ST">Sinh Viên</option>
					<option value="TC">Giáo Viên</option>
					<option value="OT">Khác </option>
				</select>
				<br>
			<br>
			<div class="send-button">
			    <input type="submit" name="signup" value="Đăng ký">
			    </form>
			</div>
			<div class="clear"></div>
		</div>
		<div class="clear"></div>
	</div>

<?php
if(isset($_POST['signin']))
{$u=$_POST['RollNo'];
 $p=$_POST['Password'];
 $c=$_POST['Category'];

 $sql="select * from LMS.user where RollNo='$u'";

 $result = $conn->query($sql);
$row = $result->fetch_assoc();
$x=$row['Password'];
$y=$row['Type'];
if(strcasecmp($x,$p)==0 && !empty($u) && !empty($p))
  {//echo "Login Successful";
   $_SESSION['RollNo']=$u;
   

  if($y=='Admin')
   header('location:admin/index.php');
  else
  	header('location:student/index.php');
        
  }
else 
 { echo "<script type='text/javascript'>alert('Failed to Login! Incorrect RollNo or Password')</script>";
}
   

}

if(isset($_POST['signup']))
{
	$name=$_POST['Name'];
	$email=$_POST['Email'];
	$password=$_POST['Password'];
	$mobno=$_POST['PhoneNumber'];
	$rollno=$_POST['RollNo'];
	$category=$_POST['Category'];
	$type='Student';

	$sql="insert into LMS.user (Name,Type,Category,RollNo,EmailId,MobNo,Password) values ('$name','$type','$category','$rollno','$email','$mobno','$password')";

	if ($conn->query($sql) === TRUE) {
echo "<script type='text/javascript'>alert('Registration Successful')</script>";
} else {
    //echo "Error: " . $sql . "<br>" . $conn->error;
echo "<script type='text/javascript'>alert('User Exists')</script>";
}
}

?>

</body>
<!-- //Body -->

</html>
