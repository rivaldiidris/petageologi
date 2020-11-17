<?php
session_start();
$_SESSION = [];
session_unset();
session_destroy();

echo "<script>
              alert('Logout Berhasil');
              document.location='index.php';
              </script>";
?>