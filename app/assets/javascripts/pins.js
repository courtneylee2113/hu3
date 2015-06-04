$(function() {
	map = new GMaps({
	  div: '#map',
	  lat: -12.043333,
	  lng: -77.028333
	});

	map.addMarker({
	  lat: -12.042223,
	  lng: -77.028333,
	  title: 'Lima',
	  infoWindow: {
		  content: '<p>An awesome marker</p>'
		}
	});

 GMaps.on('click', map.map, function(event) { console.log(event) })
})