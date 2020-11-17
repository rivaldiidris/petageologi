// var latlngs = 
//    // aceh
//     [[5, 95],
//     [5, 96.15],
//     [6, 96.15],
//     [6, 95]];
//   var polygon = L.polygon(latlngs, {color: 'red'}).addTo(map);
  
//   var latlngs = 
//    // lhoksumawe
//     [[5, 96.15],
//     [5, 97.45],
//     [5.45, 97.45],
//     [5.45, 96.15]];
//   var polygon = L.polygon(latlngs, {color: 'green'}).addTo(map);

//   var latlngs = 
//   //calang
//     [[4, 95],
//     [4, 96],
//     [5, 96],
//     [5, 95]];
// var polygon = L.polygon(latlngs, {color: 'blue'}).addTo(map);

var latlngs([
    [5, 95],
    [5, 96.15],
    [6, 96.15],
    [6, 95]
    ]).setStyle({color: 'blue'}).addTo(map).bindPopup('Map id: Banda Aceh<br>Scale: 1:250.000<br><br><a href="01-0421-521_BANDA_ACEH.jpg" target="_blank">Download Map</a><br><br><img src="01-0421-521_BANDA_ACEH.jpg" width=200x height=100px>', {maxWidth : "auto"})
      .on('mouseover', function() {
        this.setStyle({ color: 'red'});
      })
      .on('mouseout', function() {
        this.setStyle({ color: 'blue'});
      });

  for (var i = 0; i < 1; i += 1) {
    // marker = L.marker([-7.959769, 112.624614]).addTo(mymap);
    popupContent = document.createElement("img");
    popupContent.onload = function () {
      // marker.openPopup();
    };
    popupContent.src = "http://via.placeholder.com/350x150";
    //popupContent = '<img src="http://c4.staticflickr.com/1/691/21131215939_49601d06ef_b.jpg" />';
    marker.bindPopup(popupContent, {maxWidth: "auto"});
  }

  var polygon = L.polygon(latlngs, {color: 'blue'}).addTo(map);