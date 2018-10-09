<?php
class User{
	public $username;
	public $password;
	public function __construct($username,$password){
		$this->username = $username;
		$this->password = password_hash($password,PASSWORD_DEFAULT);
	}
	public function login($username,$password){
		$hash = password_hash("12345",PASSWORD_DEFAULT);
		if($username == "admin" && password_verify ($password,$hash)){
			return true;
		}
	}
}