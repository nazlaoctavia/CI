<?php 
include "../config/koneksi.php";

$ID =$_GET['hapus'];
$sql = "DELETE FROM dekan WHERE nidn = '$ID'";

$qry = mysql_query($sql);
if($qry){
	//echo "Data berhasil dihapus";
	echo "<script>document.location='?p=data_dekan'</script>";
	}
	else 
	echo "Gagal Menghapus";
?>