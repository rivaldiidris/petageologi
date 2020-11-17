<?php
require 'function.php';

if( isset($_POST["register"]) ) {

	if( registrasi($_POST) > 0 ) {

		echo "<script>
				alert('Registrasi Berhasil!');
				</script>";

	} else {
		echo mysqli_error($conn);
	}

}

?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

    <title>Registrasi</title>
  </head>
  <body>
    <h1 align="center">Halaman Registrasi</h1>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

  <div class="row justify-content-center align-items-center h-75">
    <div class="col col-sm-6 col-md-6 col-lg-4 col-xl-3">   
  			<form action="" method="post">
		  <div class="form-group">
		    <label for="username">Username</label>
		    <input type="text" class="form-control" name="username" id="Username">
		  </div>
		  <div class="form-group">
		    <label for="password">Password</label>
		    <input type="password" class="form-control" name="password" id="password">
		  </div>
		   <div class="form-group">
		    <label for="password2">Konfirmasi Password</label>
		    <input type="password" class="form-control" name="password2" id="password2">
		  </div>
		  <div class="container">
  			<div class="row">
    			<div class="col text-center">
		  		<button type="submit" name="register" class="btn btn-primary text-center">Submit</button>
		  		</div>
		  	</div>
		  </div>		
			</form>
    </div>
  </div>
  </body>
</html>