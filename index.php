<?php
session_start();


require'function.php';

if( isset($_POST["login"]) ){

  $username = $_POST["username"];
  $password = $_POST["password"];

  $result = mysqli_query($conn, "SELECT * FROM users WHERE username = '$username'");

  //cek username
  if( mysqli_num_rows($result) === 1 ){

    //cek password
    $row = mysqli_fetch_assoc($result);
    if(password_verify($password, $row["password"]) ) {
      //set session
      $_SESSION["login"] = true;
      $_SESSION['username'] = $username;
      echo "<script>
              alert('Login Berhasil');
              document.location='admin.php';
              </script>";
      exit;
    }
  }

 $error = true;

 if( isset($error) ) {
  echo "<script>
        alert('Username / Password Salah');
        </script>";
 }

 }

?> 
<!DOCTYPE html>
<html lang="en">
  <head>
  
    <style>
    .footer { 
      position: fixed; 
      bottom: 0px; 
      height:150px;
      width: 100%;

       }

    </style>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

    <title>Peta Geologi Indonesia</title>
  


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</head>

 <body>   
  
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
 
  <a class="navbar-brand" href="#">Peta Geologi Indonesia</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
      
    </ul>

    
     <div class="dropdown">
  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Login
  </button>
<div class="dropdown-menu dropdown-menu-lg-right">
  
  <?php if( isset($error)) : ?>
    echo "<script>
        alert('Username / Password Salah!');
        </script>";
   <?php endif; ?>
    
  <form action = "" method = "post" class="px-4 py-3">
    <div class="form-group">
      <label for="username">Username</label>
      <input type="text" class="form-control" name="username" id="username">
    </div>
    <div class="form-group">
      <label for="password">Password</label>
      <input type="password" class="form-control" name="password" id="password">
    </div>
    <div class="form-check">
      <input type="checkbox" class="form-check-input" id="remember" name="remember">
      <label class="form-check-label" for="remember">Remember me</label>
    </div>
    <button type="submit" name="login" class="btn btn-primary">Login</button>
  </form>
  <div class="dropdown-divider"></div>
  <a class="dropdown-item" href="registrasi.php">New around here? Register</a>
</div>
</div>
</div>
  </div>
</nav>

<section id="home" class="home">

<div class="container">
  <div class="jumbotron jumbotron-fluid" style="background-color: white">
    <div class="card border-white mb-3" style="max-width: auto;">
      <div class="row no-gutters">
        <div class="col-md-5 ">
        <img src="img/globe.png" class="card-img" alt="...">
        </div>
          <div class="col-md-7">
            <div class="card-body">
            <h2 class="card-title">Tentang Situs Ini:</h2>
            <p>Situs ini menyediakan data peta tematik dari wilayah Indonesia. Tersedia juga peta tematik yang memiliki data koordinat georeferensi, yang dapat digunakan
            bagi anda pengguna perangkat lunak GIS untuk melakukan pengolahan pada peta tematik.</p>
            <p>Anda dapat melakukan pencarian peta secara visual dan dapat mengakses informasi rinci dengan mengklik salah satu cell tertentu.</p>
            <p><a href="peta.php" class="btn btn-primary">Cari Peta</a></p>
            </div>
          </div>
      </div>
    </div> 
  </div>   
</div>
</section>
<footer class="bg-dark text-white mt-3" style="position: absolute;height: auto;width: 100%">
    <p style="font-size: 12px;line-height: 14px;text-align: center;">
    <br>Dikembanngkan oleh:</br>
    <br>Muhammad Rivaldi Idris | Fatwa Ramdani, D.Sc., S.Si., M.Sc. | Welly Purnomo, S.T., M.Kom.</br>
    <br>Grup Induksi Riset Geoinformatika</br>  
    <br>Universitas Brawijaya</br>
    <br>Malang, Indonesia</br>
  </p>

</body>
</html>