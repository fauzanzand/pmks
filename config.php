<?php
	// connection
	$host = 'localhost';
	$username = 'root';
	$password = '';
	$database = 'pmks';

	$koneksi = mysqli_connect($host,$username,$password,$database);

	if (!$koneksi)
	{
		echo "Tidak dapat terkoneksi dengan server";
		exit();
	}

	if(!mysqli_select_db($koneksi, $database))
	{
		echo "Tidak dapat menemukan database";
		exit();
	}
?>