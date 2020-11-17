<?php
session_start();
if( !isset($_SESSION["login"])) {
  echo "<script>
              alert('Anda harus login terlebih dahulu!');
              document.location='index.php';
              </script>";
  exit;
}
$conn = mysqli_connect("localhost", "root", "", "webgis")or die(mysqli_error($conn));

//tambah data
if(isset($_POST['simpan'])) {

  $img = $_FILES["img"]['name'];
  $georeferenced = $_FILES["img_tif"]['name'];

  $simpan = mysqli_query($conn, "INSERT INTO maps (lembar_peta, skala, tahun, penyusun, Penerbit, a, b, c, d,img,img_tif) 
    VALUES ('$_POST[lembar_peta]',
            '$_POST[skala]',
            '$_POST[tahun]',
            '$_POST[penyusun]',
            '$_POST[penerbit]',
            '$_POST[a]',
            '$_POST[b]',
            '$_POST[c]',
            '$_POST[d]',
            '$img',
            '$georeferenced')"
            );

  if($simpan)
  {

      move_uploaded_file($_FILES["img"]["tmp_name"], "assets/peta/peta/".$_FILES["img"]["name"]);
      move_uploaded_file($_FILES["img_tif"]["tmp_name"], "assets/peta/georeferensi/".$_FILES["img"]["name"]);
      
      echo "<script>
            alert('Simpan Berhasil');
            document.location='admin.php';
            </script>";
  }
  else
  {
    echo "<script>
            alert('Simpan Gagal');
            document.location='admin.php';
            </script>";
  } 
}
?>