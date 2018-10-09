<?php
session_start();
if(isset($_SESSION['user'])){
	echo "Xin chao ".$_SESSION['user'];
	echo "<a href='logout.php'>Logout</a>";
}
else{
	header('location:login.php');
}