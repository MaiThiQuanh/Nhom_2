<?php
session_start();
if(isset($_POST['user'])){
	include "user.php";
	$user1 = new User($_POST['user'],$_POST['pass']);
	if($user1->login($_POST['user'],$_POST['pass'])){
		//dk dung
		//luu thong tin vao session
		$_SESSION['user'] = $_POST['user'];
		if(isset($_POST['remember'])){
			//luu cookie
			setcookie('user',$_POST['user'],time()+3600);
			setcookie('pass',$_POST['pass'],time()+3600);
		}
		//chuyen sang trang admin
		header('location:index.php');
	}
	else{
		echo "Nhap sai thong tin";
	}
}
?>
<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
</head>
<body>
<form action="" method="post">
	Username <input type="text" name="user" value="<?php echo isset($_COOKIE['user'])?$_COOKIE['user']:'' ?>"><br>
	Password <input type="Password" name="pass"><br>
	<input type="checkbox" name="remember">Remember
	<input type="submit" name="">
</form>
</body>
</html>