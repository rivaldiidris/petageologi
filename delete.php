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

function deleteData($data)
{
    global $conn;

    $id = $data['id'];

mysqli_query($conn, "DELETE FROM maps WHERE id='$id'
");
return mysqli_affected_rows($conn);

}

if (isset($_POST['delete'])) {
    if (deleteData($_POST) > 0) {
      echo "<script>
              alert('Delete Berhasil');
              document.location='admin.php';
              </script>";
    }
    else
      {
        echo "<script>
                alert('Delete Gagal');
                document.location='admin.php';
                </script>";
      } 
  }

?>