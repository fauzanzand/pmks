<?php
	include "../config.php";
	//menggunakan class phpExcelReader
	include "../import/excel_reader2.php";

	$dataUpload = $_GET['data'];
	if($dataUpload=='KK'){
		//membaca file excel yang diupload
		$data = new Spreadsheet_Excel_Reader($_FILES['userfile']['tmp_name']);
		//membaca jumlah baris dari data excel
		$baris = $data->rowcount($sheet_index=0);
		//nilai awal counter jumlah data yang sukses dan yang gagal diimport
		$sukses = 0;
		$gagal = 0;
		//import data excel dari baris kedua, karena baris pertama adalah nama kolom
		for ($i=1; $i<=$baris; $i++) {			
			$no_kk = $data->val($i,1);
			$nik_kpl = $data->val($i,2);
			$nm_kpl = $data->val($i,3);
			$tgl_lhr_kpl = $data->val($i,4);
			$alamat_kpl = $data->val($i,5);
			$pekerjaan_kpl = $data->val($i,6);
			$pendidikan_kpl = $data->val($i,7);
			//setelah data dibaca, sisipkan ke dalam tabel 
			$query = "UPDATE kk ('no_kk','nik_kpl',
 									 'nm_kpl','tgl_lhr_kpl','alamat_kpl','pekerjaan_kpl',
 									 'pendidikan_kpl') 
			SET ('$no_kk','$nik_kpl',
 									 '$nm_kpl','$tgl_lhr_kpl','$alamat_kpl','$pekerjaan_kpl',
 									 '$pendidikan_kpl')";
			$hasil = mysqli_query($config,$query);
			return mysqli_affected_rows($config);
			//menambah counter jika berhasil atau gagal
			if($hasil) $sukses++;
				else $gagal++;
		}		
		header('location:pmks.php');
	
	}
?>