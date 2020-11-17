<?php
session_start();

if(!isset($_SESSION["login"])) {
  echo "<script>
              alert('Anda harus login terlebih dahulu!');
              document.location='index.php';
              </script>";
  exit;
}
$conn = mysqli_connect("localhost", "root", "", "webgis")or die(mysqli_error($conn));
$data = mysqli_query($conn,"select * from maps");

if( isset($_POST["login"]) ){

  $username = $_POST["username"];
  $password = $_POST["password"];

  $result = mysqli_query($conn, "SELECT * FROM users WHERE username = '$username'");
}
// echo $count;
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <style>

        html, body, #map {
            width: 100%;
            height: 600px;
            padding: 0;
            margin:  0;
        }
    </style>
    <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCAXiryO1A_u30WU1L_QjWSKtiLS8VGdB0&callback=initialize&libraries=places"></script>
    <link rel="stylesheet" type="text/css" href="code/style.css"/>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="initial-scale=1,user-scalable=no,maximum-scale=1,width=device-width">
    <meta name="mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-capable" content="yes">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">

        <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

    <script>
// Initialize and add the map


function initialize() {
      
      var myLatLng = new google.maps.LatLng(-0.789275, 113.921326);   
      var mapOptions = {     
                        zoom: 5,
                            
                        center: myLatLng,     
                        mapTypeId: google.maps.MapTypeId.SATELLITE   
      };
      var map = new google.maps.Map(document.getElementById("map"), mapOptions);
      

      var shapes = new Array();
      var info = new google.maps.InfoWindow();           
    <?php
            $i = 0;
            while($d = mysqli_fetch_array($data)){
    ?>
        // {{#each data}}
        shapes[<?php echo $i ?>] = new google.maps.Polygon({
                paths: [
                    new google.maps.LatLng({ "lat": <?php echo $d['a'] ?>, "lng":  <?php echo $d['b'] ?> }),
                    new google.maps.LatLng({ "lat": <?php echo $d['a'] ?>, "lng":  <?php echo $d['d'] ?> }),
                    new google.maps.LatLng({ "lat": <?php echo $d['c'] ?>, "lng":  <?php echo $d['d'] ?> }),
                    new google.maps.LatLng({ "lat": <?php echo $d['c'] ?>, "lng":  <?php echo $d['b'] ?> }),
                ],
                strokeColor: "#004166",
          strokeOpacity: 0.8,
          strokeWeight: 2,
          fillColor: "#12a8ff",
          fillOpacity: 0.35,
            });
        google.maps.event.addListener(shapes[<?php echo $i ?>], 'click', (event) => {
       var contentString =  
                '<div id="content">'+
                "<b><?php echo $d['lembar_peta'] ?></b><br/>"+
                "<b><?php echo $d['skala'] ?></b><br/>"+
                "<p><a href='details.php?ID=<?php echo $d['id'] ?>'>More Details</a>"+
                '<br><img src="assets/peta/peta/<?php echo $d['img'] ?>" width="auto" height="250px">'+
                "</div>"+
                "<button class='btn btn-warning btn-sm btn-lg btn-block' id='editbtn' data-toggle='modal' data-target='#edit' data-id='<?= $d['id']; ?>' data-indeks='<?= $d['lembar_peta']; ?>' data-skala='<?= $d['skala']; ?>' data-tahun='<?= $d['tahun']; ?>' data-penyusun='<?= $d['penyusun']; ?>' data-penerbit='<?= $d['penerbit']; ?>' data-a='<?= $d['a']; ?>' data-b='<?= $d['b']; ?>' data-c='<?= $d['c']; ?>' data-d='<?= $d['d']; ?>'>Edit</button>"+
                '<button class="btn btn-danger btn-sm btn-lg btn-block" id="delbtn" data-toggle="modal" data-target="#delete" data-id="<?= $d['id']; ?>">Hapus</button>'
                info.setContent(contentString);
                info.setPosition(event.latLng);
                info.open(map); 
            });
            <?php
            $i++;
        }
        ?>
        // {{/each}}
        for (var y = 0, l = shapes.length; y < l; y++) {
            shapes[y].setMap(map);
        }

    var searchBox = new google.maps.places.SearchBox(document.getElementById('pac-input'));
                            map.controls[google.maps.ControlPosition.TOP_CENTER].push(document.getElementById('pac-input'));
                            google.maps.event.addListener(searchBox, 'places_changed', function() {
                            searchBox.set('map', null);
     var places = searchBox.getPlaces();
     var bounds = new google.maps.LatLngBounds();
     var i, place;
     for (i = 0; place = places[i]; i++) {
       (function(place) {
         var marker = new google.maps.Marker({
           position: place.geometry.location,          
         });
         marker.bindTo('map', searchBox, 'map');
         bounds.extend(place.geometry.location);
          marker.addListener("click", () => {
          info.setContent(contentString);
                info.setPosition(event.latLng);
          info.open(map, marker);
        });
       }(place));
     }
     map.fitBounds(places[0].geometry.viewport);
     searchBox.set('map', map);
   });
    
    }
        
        google.maps.event.addDomListener(window, 'load', initialize);
    </script>

    <title>Admin</title>
  </head>
  <body class="mt-5">
  <div class="container">	
  <div class="mb-1">	
   <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark">
 
  <a class="navbar-brand">Peta Geologi Indonesia</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
      
    </ul>
    <!-- <div class="dropdown">
  <button class="btn dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    <img src="account.svg">
  </button>
<div class="dropdown-menu dropdown-menu-lg-right">
    <div class="nav-item dropdown"> -->
             <div class="dropdown">
                    <a class="nav-link dropdown-toggle text-white" id="userDropdown" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 
                    <?php echo $_SESSION['username'] ?>
                    </a>
                    <div class="dropdown-menu dropdown-menu-lg-right">
                        <a class="dropdown-item" href="logout.php">Logout</a>
                    </div>
                </div>
            </div>
</nav>
</div>
</div>

<!-- content -->
<section id="home" class="home">

	
<div class="row h-100 justify-content-center">
	<div class="card shadow mt-5" style="width: 95%">

                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">Selamat Datang</h6>   
                </div>

                <!-- Card Body -->
                <div class="card-body">
                  <div class="chart-area">

                      <div class="alert alert-dismissible" role="alert" style="background-color: #eaeaea">
                        <h4><b>Kelola Peta Geologi!</b></h4>
                        <ol>
                        <li>Pilih lokasi yang sudah dibagi ke dalam grid</li>
                        <li>Akan muncul pop-up box berisikan thumbnail gambar peta dan button upload file gambar terbaru</li>           
                        </ol>     
                      </div>

                  </div>
                </div>

  </div>
</div>
        </section>

           <div class="row h-100 justify-content-center">
	           <div class="card shadow mt-5" style="width: 95%">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">Peta</h6>

                  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#tambahBaru">
                    Tambah Baru
                  </button>
                 
                </div>
                <!-- Card Body -->
                <div class="card-body">
                  <input id="pac-input" class="controls" type="text" placeholder="Search Box">
                  <div id="map">
                </div>
</div>          
</div>
</div>

          <!-- Modal add new-->
<div class="modal fade" id="tambahBaru" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Tambah Baru</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form id="myForm1" method="post" action="tambahdata.php" enctype="multipart/form-data">

          <div class="form-group row">
          <label for="inputIndeks" class="col-sm-3 col-form-label">Indeks Peta</label>
            <div class="col-sm-9">
              <input type="text" name="lembar_peta" class="form-control" id="inputIndeks" placeholder="Indeks Peta" required>
            </div>  
        </div>

        <div class="form-group row">
          <label for="inputSkala" class="col-sm-3 col-form-label">Skala</label>
            <div class="col-sm-9">
             <input type="text" name="skala" class="form-control" id="inputSkala" placeholder="Skala" required>
            </div>  
        </div>

        <div class="form-group row">
          <label for="inputTahun" class="col-sm-3 col-form-label">Tahun Terbit</label>
            <div class="col-sm-9">
              <input type="text" name="tahun" class="form-control" id="inputTahun" placeholder="Tahun Terbit" required>
            </div>  
        </div>

        <div class="form-group row">
          <label for="inputPenyusun" class="col-sm-3 col-form-label">Penyusun</label>
            <div class="col-sm-9">
              <input class="form-control" name="penyusun" id="inputPenyusun" placeholder="Penyusun" rows="3" required>
              </input>
            </div>  
        </div>

        <div class="form-group row">
          <label for="inputPenerbit" class="col-sm-3 col-form-label">Penerbit</label>
            <div class="col-sm-9">
              <input type="text" name="penerbit" class="form-control" id="inputPenerbit" placeholder="Penerbit" required>
            </div>  
        </div>
        
        <div class="modal-header">
          <h5 class="modal-title" id="inputKoordinat">Koordinat</h5>
        </div>

        <div class="form-row pt-3">

          <div class="form-group col-md-6">
            <input type="text" name="a" class="form-control" id="inputKoordinat" placeholder="Garis Lintang 1" required>
          </div>
          <div class="form-group col-md-6">
            <input type="text" name="b" class="form-control" id="inputKoordinat" placeholder="Garis Bujur 1" required>
          </div>
          <div class="form-group col-md-6">
            <input type="text" name="c" class="form-control" id="inputKoordinat" placeholder="Garis Lintang 2" required>
          </div>
          <div class="form-group col-md-6">
            <input type="text" name="d" class="form-control" id="inputKoordinat" placeholder="Garis Bujur 2" required>
          </div>

        </div>

        <div class="modal-header">
          <h5 class="modal-title" id="inputGambarPeta">Upload Peta</h5>
        </div>
            <div class="custom-file mt-3">
              <label for="exampleFormControlFile1">Gambar Peta</label>
              <input type="file" name="img" id="img" class="form-control-file" required>
            </div>
            <div class="custom-file mt-3">
              <label for="exampleFormControlFile2">Gambar Peta (Georeferenced)</label>
              <input type="file" name="img_tif" id="img_tif" class="form-control-file" required>
            </div>

      <div class="modal-footer">
        <button onclick="myFunction()" data-dismiss="modal" type="reset" value="reset" class="btn btn-secondary">Close</button>
        <button type="sumbit" class="btn btn-success" name="simpan">Simpan</button>
      </div>
      <script>
      function myFunction() {
      document.getElementById("myForm1").reset();
      }
    </script>  
        </form>
      </div>    
    </div>
  </div>
</div>
<!-- end modal add new -->

<!-- Modal edit-->
<div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Edit Data</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form id="myForm2" method="post" action="edit.php" enctype="multipart/form-data">
        <input type="hidden" name="id" id="id">

          <div class="form-group row">
          <label for="indeks" class="col-sm-3 col-form-label">Indeks Peta</label>
            <div class="col-sm-9">
              <input type="text" name="lembar_peta" class="form-control" id="indeks" placeholder="Indeks Peta" require>
            </div>  
        </div>

        <div class="form-group row">
          <label for="skala" class="col-sm-3 col-form-label">Skala</label>
            <div class="col-sm-9">
              <input type="text" name="skala" class="form-control" id="skala" placeholder="Skala" require>
            </div>  
        </div>

        <div class="form-group row">
          <label for="tahun" class="col-sm-3 col-form-label">Tahun Terbit</label>
            <div class="col-sm-9">
              <input type="text" name="tahun" class="form-control" id="tahun" placeholder="Tahun Terbit" require>
            </div>  
        </div>

        <div class="form-group row">
          <label for="penyusun" class="col-sm-3 col-form-label">Penyusun</label>
            <div class="col-sm-9">
              <input type="text"  name="penyusun" class="form-control" id="penyusun" placeholder="Penyusun" require>
              </input>
            </div>  
        </div>

        <div class="form-group row">
          <label for="penerbit" class="col-sm-3 col-form-label">Penerbit</label>
            <div class="col-sm-9">
              <input type="text" name="penerbit" class="form-control" id="penerbit" placeholder="Penerbit" require>
            </div>  
        </div>
        
        <div class="modal-header">
          <h5 class="modal-title" id="inputKoordinat">Koordinat</h5>
        </div>

        <div class="form-row pt-3">

          <div class="form-group col-md-6">
            <input type="text" name="a" class="form-control" id="a" placeholder="Garis Lintang 1" require>
          </div>
          <div class="form-group col-md-6">
            <input type="text" name="b" class="form-control" id="b" placeholder="Garis Bujur 1" require>
          </div>
          <div class="form-group col-md-6">
            <input type="text" name="c" class="form-control" id="c" placeholder="Garis Lintang 2" require>
          </div>
          <div class="form-group col-md-6">
            <input type="text" name="d" class="form-control" id="d" placeholder="Garis Bujur 2" require>
          </div>

        </div>

        <div class="modal-header">
          <h5 class="modal-title" id="inputGambarPeta">Upload Peta</h5>
        </div>
            <div class="custom-file mt-3">
              <label for="exampleFormControlFile1">Gambar Peta</label>
              <input type="file" name="img" id="img" class="form-control-file" require>
            </div>
            <div class="custom-file mt-3">
              <label for="exampleFormControlFile2">Gambar Peta (Georeferenced)</label>
              <input type="file" name="img_tif" id="img_tif" class="form-control-file" require>
            </div>

      <div class="modal-footer">
        <button onclick="myFunction2()" data-dismiss="modal" type="reset" value="reset" class="btn btn-secondary">Close</button>
        <button type="sumbit" class="btn btn-success" name="update">Update</button>
      </div>
      </form>
      <script>
      function myFunction2() {
      document.getElementById("myForm2").reset();
      }
    </script>  
        </form>
      </div>    
    </div>
  </div>
</div>
<!-- end modal Edit -->

<!-- Modal delete-->
<div class="modal fade" id="delete" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Delete Data</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form id="myForm3" method="post" action="delete.php" enctype="multipart/form-data">
        <input type="hidden" name="id" id="id">
        <h4>Are You Sure?</h4>
      <div class="modal-footer">
        <button onclick="myFunction3()" data-dismiss="modal" type="reset" value="reset" class="btn btn-secondary">Tidak</button>
        <button type="sumbit" class="btn btn-success" name="delete">Iya</button>
      </div>
      </form>
      <script>
      function myFunction3() {
      document.getElementById("myForm3").reset();
      }
    </script>  
        </form>
      </div>    
    </div>
  </div>
</div>
<!-- end modal delete -->
<script>
$(document).on("click", "#editbtn", function() {
  let id = $(this).data('id');
  let indeks = $(this).data('indeks');
  let skala = $(this).data('skala');
  let tahun = $(this).data('tahun');
  let penyusun = $(this).data('penyusun');
  let penerbit = $(this).data('penerbit');
  let a = $(this).data('a');
  let b = $(this).data('b');
  let c = $(this).data('c');
  let d = $(this).data('d');


  $(".modal-body #id").val(id);
  $(".modal-body #indeks").val(indeks);
  $(".modal-body #skala").val(skala);
  $(".modal-body #tahun").val(tahun);
  $(".modal-body #penyusun").val(penyusun);
  $(".modal-body #penerbit").val(penerbit);
  $(".modal-body #a").val(a);
  $(".modal-body #b").val(b);
  $(".modal-body #c").val(c);
  $(".modal-body #d").val(d);
});
</script>
<script>
$(document).on("click", "#delbtn", function() {
  let id = $(this).data('id');
  $(".modal-body #id").val(id);
});

</script>

</body>
</html>