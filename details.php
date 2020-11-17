<?php
if(isset($_GET['ID'])) {
  $conn = mysqli_connect("localhost", "root", "", "webgis");
  $ID = mysqli_real_escape_string($conn, $_GET['ID']);
  $data = mysqli_query($conn,"select * from maps where id='$ID'");
  $d = mysqli_fetch_array($data);

}



// $id = mysqli_real_escape_string($conn, $_GET['id']);


// $count = mysqli_num_rows($data);
// echo $count;
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <style>
      #html, body {
  height: 100%;
}
#body {
  position: relative;
  margin: 0;
  min-height: 100%;
  overflow-x: hidden;
}

#footer {
  position: absolute;
  
  height: 4rem;
  right: 0;
  bottom: 0;
  left: 0;
}
    </style>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css">

    <title>Peta Geologi Indonesia</title>
  


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.js"></script>
    <script>
      $(document).on('click', '[data-toggle="lightbox"]', function(event) {
                event.preventDefault();
                $(this).ekkoLightbox();
            });
    </script>
</head>

 <body>   
  
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
 
  <a class="navbar-brand" href="index.php">Peta Geologi Indonesia</a>

</nav>

<section id="home" class="home">

  <div class="card-body">
        <ol class="breadcrumb" style="background-color: #f6f6f6">
          <li class="breadcrumb-item">Informasi Detail Peta Geologi</li>
        </ol>
  </div>


<div class="container">
  
  <div class="row">
    <div class="col-md-6 mr-auto" style="background-color: ">
      <table class="table">
      
    <tbody>
         <tr>
          <td>Indeks Peta</td>
          <td><?php echo $d['lembar_peta'] ?></td>
        </tr>

        <tr>
          <td>Skala</td>
          <td><?php echo $d['skala'] ?></td>
        </tr>

        <tr>
          <td>Tahun Terbit</td>
          <td><?php echo $d['tahun'] ?></td>
        </tr>

        <tr>
          <td>Penyusun</td>
          <td><?php echo $d['penyusun'] ?></td>
        </tr>

        <tr>
          <td>Penerbit</td>
          <td><?php echo $d['penerbit'] ?></td>
        </tr>
  </tbody>
 
</table>
    </div>
    <div class="col-md-6 ml-auto" style="background-color: ">
      <a href="assets/peta/peta/<?php echo $d['img'] ?>" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-4">
      <img src="assets/peta/peta/<?php echo $d['img'] ?>" class="img-fluid border border-dark rounded">
    </a>
    </div>
 </div>

  <div class="container">

    <a href="assets/peta/peta/<?php echo $d['img'] ?>" download class="btn btn-primary">
      <img src="assets/download2.png" width="110" height="28">
    </a>

     <a href="assets/peta/georeferensi/<?php echo $d['img_tif'] ?>" download class="btn btn-primary">
      <img src="assets/download3.png" width="110" height="28">
    </a>

  </div>





</section>

<!--  <footer class="container" style="background-color: green">
    <p class="float-right"><a href="#">Back to top</a></p>
    <p>&copy; 2017-2020 Company, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
  </footer> -->
<footer class="bg-dark text-white mt-4" style="position: absolute;height: auto;width: 100%">
    <p style="font-size: 12px;line-height: 14px;text-align: center;">
    <br>Dikembanngkan oleh:</br>
    <br>Muhammad Rivaldi Idris | Fatwa Ramdani, D.Sc., S.Si., M.Sc. | Welly Purnomo, S.T., M.Kom.</br>
    <br>Grup Induksi Riset Geoinformatika</br>  
    <br>Universitas Brawijaya</br>
    <br>Malang, Indonesia</br>
  </p>
</footer>

</body>
</html>