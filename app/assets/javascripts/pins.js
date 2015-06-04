$(function() {
	map = new GMaps({
	  div: '#map',
	  lat: 43.642604,
	  lng: -79.387117
	});

	map.addMarker({
	  lat: 43.642604,
	  lng: -79.387117,
	  title: 'Lima',
	  infoWindow: {
		  content: '<p>An awesome marker</p>'
		}
	});

 GMaps.on('click', map.map, function(event) { console.log(event) })
})


