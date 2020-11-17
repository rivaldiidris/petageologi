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
$data = mysqli_query($conn,"select * from maps");
//edit

function updateData($data)
{
    global $conn;

    $id = $data['id'];
    $indeks = $data['lembar_peta'];
    $skala = $data['skala'];
    $tahun = $data['tahun'];
    $penyusun = $data['penyusun'];
    $penerbit = $data['penerbit'];
    $a = $data['a'];
    $b = $data['b'];
    $c = $data['c'];
    $d = $data['d'];

mysqli_query($conn, "UPDATE maps SET
                lembar_peta = '$indeks',
                skala = '$skala',
                tahun = '$tahun',
                penyusun = '$penyusun',
                penerbit = '$penerbit',
                a = '$a',
                b = '$b',
                c = '$c',
                d = '$d'
            WHERE id = '$id'
");
return mysqli_affected_rows($conn);

}

if (isset($_POST['update'])) {
    if (updateData($_POST) > 0) {
      echo "<script>
              alert('Update Berhasil');
              document.location='admin.php';
              </script>";
    }
    else
      {
        echo "<script>
                alert('Update Gagal');
                document.location='admin.php';
                </script>";
      } 
  }

?>