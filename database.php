<?php 
/**
 * 
 */
class Db 
{
	
	//Tạo Biến kết nối
	public static $conn;
	//Tạo kết nối trong hàm construct
	public function __construct()
	{
		self::$conn = new mysqli(DB_HOST,DB_USER,DB_PASS,DB_NAME);
		self::$conn->set_charset('utf8');
	}
	//Tao ham huy
	//public function __destruct()
	//{
	//	self::$conn->close();
	//}
	//Ham lay tat ca du lieu
	public function getData($obj)
	{
		$arr = array();
		while ($rows = $obj->fetch_assoc())
		{
			$arr[] = $rows;
		}
		return $arr;
	}
	//Ham lay tat ca san pham
	public function getAllProduct($page,$per_page)
	{
		$first_link = ($page - 1) * $per_page;
		$sql = "SELECT * FROM products JOIN manufactures on products.manu_ID = manufactures.manu_ID JOIN protypes ON products.type_ID = protypes.type_ID LIMIT $first_link,$per_page ";
		$result = self::$conn->query($sql);
		return $this->getData($result);
	}
	//Tim kiem sp trong database
	public function searchProduct($name)
	{
		$sql = "SELECT * FROM products JOIN manufactures on products.manu_ID = manufactures.manu_ID JOIN protypes ON products.type_ID = protypes.type_ID WHERE  name LIKE '%$name%'";
		$result = self::$conn->query($sql);
		return $this->getData($result);
	}
	//Lấy tất cả manufacture
	public function getAllmanufacture()
	{
		$sql = "SELECT * FROM manufactures";
		$result = self::$conn->query($sql);
		return $this->getData($result);
	}
	//Lấy tính tổng sản phẩm
	public function countAllProducts()
	{
		$sql = "SELECT COUNT(*) FROM products";
		$result = self::$conn->query($sql);
		return $this->getData($result);
	}
	
	//Hàm phân trang
	public function createLinks($url, $total, $page, $per_page)
	{
		$total_links = ceil($total/$per_page);	
		$link ="";		
		$nextp = $page + 1;
		$pre = $page - 1;
		if($page > 1) $page = 1 ;
		{
		 $next = "<a href='$url?page=$nextp' style='color:red;'> > </a>";
	    $prev = "<a href='$url?page=$pre' style='color:red;'> < </a>";
		} 
	



	    $fprev = "<a href='$url' style='color:red;'> << </a>";	    
	    $fnext = "<a href='$url?page=$total_links' style='color:red;'> >> </a>";
				 	 
		for($j=1; $j <= $total_links ; $j++) 
		    {
		       $link = $link."<a href='$url?page=$j' style='color:red;'> $j </a>";
		    } 
		return $fprev.$prev.$link.$next.$fnext; 
	} 

 }
 ?>