<?php
$conn = mysqli_connect("localhost", "root", "", "webgis");
$data = mysqli_query($conn,"select * from maps");
$count = mysqli_num_rows($data);
// echo $count;
?>

<!DOCTYPE html>
<html>
  <head>
    <style>
    
      html, body, #map {
            width: 100%;
            height: 100%;
            padding: 0;
            margin:  0;
        }
    </style>
    <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCAXiryO1A_u30WU1L_QjWSKtiLS8VGdB0&callback=initialize&libraries=places"></script>
    <link rel="stylesheet" type="text/css" href="code/style.css"/>
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
                '<br><img src="assets/peta/peta/<?php echo $d['img'] ?>" width="auto" height="250px">'
                "</div>"
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
  </head>
  <body>
    <input id="pac-input" class="controls" type="text" placeholder="Search Box">
    <div id="map"></div>
  </body>
  </html>