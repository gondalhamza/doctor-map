$( document ).on('turbolinks:load', function() {

	let map;
	
	initMap = function() {
			
    var center, marker;
    center = { lat: 40.731, lng: -73.997 };
    
    const infowindow = new google.maps.InfoWindow();
    const geocoder = new google.maps.Geocoder();

    map = new google.maps.Map(document.getElementById('map'), {
      zoom: 13,
      center: center
    });

		// Doctor Location 
		geocodeAddressForDoctor('Thygesons Vei 30, 0667 Oslo', geocoder, infowindow)

		// MArkers for booking
		BookingMarkersOnMap(geocoder, map);

  };


	function BookingMarkersOnMap(geocoder, map) {
		alert('hi');

		var locations = [
			 ['Haugerudveien 87, 0674 Oslo', '10:22'],
			 ['Siebkesgate 6c, 0562 Oslo', '10:22'],
			 ['Hagegata 36c, 0653 Oslo', '10:22'],
			 ['Nordraaks Gate 3, 0266 Oslo', '10:22'],
			 ['Granstangen 10a, 1051 Oslo', '10:22'],
			 ['sørengkaia 64, 0194 Oslo', '10:22'],
	  ];

	  for (i = 0; i < locations.length; i++) {
	   geocodeAddress(geocoder, map, address = locations[i][0], time = locations[i][1]);
		}
	}

	function geocodeAddress(geocoder, map, address, time) {
	  const infowindowBooking = new google.maps.InfoWindow();
	  
	  geocoder.geocode({ address: address }, (results, status) => {
	    if (status === "OK") {
	      marker = new google.maps.Marker({
	        map: map,
	        position: results[0].geometry.location,
	      });

	      infowindowBooking.setContent('Time: '+time);
				infowindowBooking.open(map, marker);

	    } else {
	      alert("Geocode was not successful for the following reason: " + status);
	    }
	  });
	}

	function geocodeAddressForDoctor(address, geocoder, infowindow) {
	  // Doctor Location 
	  geocoder.geocode({ address: address }, (results, status) => {
	    if (status === "OK") {
	      map.setCenter(results[0].geometry.location);
	    	marker = new google.maps.Marker({
	        map: map,
	        position: results[0].geometry.location,
	      });

	      infowindow.setContent('Current Location');
				infowindow.open(map, marker);
	    } else {
	      alert("Geocode was not successful for the following reason: " + status);
	    }
	  });
	}

});
