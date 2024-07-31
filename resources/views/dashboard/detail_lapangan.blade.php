<!DOCTYPE html>
<html lang="en">

<head>
  <title>Google Maps Laravel</title>
  <script src="https://maps.googleapis.com/maps/api/js?key={{ env('GOOGLE_MAPS_API_KEY') }}&callback=initMap" async
    defer></script>
  <script>
  function initMap() {
    var location = @json($location);
    var map = new google.maps.Map(document.getElementById('map'), {
      center: location,
      zoom: 15
    });
    var marker = new google.maps.Marker({
      position: location,
      map: map
    });
  }
  </script>
</head>

<body>
  <div id="map" style="height: 400px; width: 100%;"></div>
</body>

</html>