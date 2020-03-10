//----------------
//Mapbox code refactored.

import mapboxgl from 'mapbox-gl';

const mapElement = document.getElementById('map');

let mapInstance;

const buildMap = (initMarker) => {
  let initialCoords;
  if (initMarker) {
    initialCoords = initMarker;
  } else {
    initialCoords = { lat: 45.5017, lng:  -73.5673 }
  }

  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  mapInstance = new mapboxgl.Map({
    container: 'map',
    zoom: 10,
    center: [initialCoords.lng, initialCoords.lat],
    style: 'mapbox://styles/mapbox/streets-v10'
  });

  return mapInstance
};

const addMarkersToMap = (map, markers) => {
  markers.forEach((marker) => {
    const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);

  // Custom marker code
  // const element = document.createElement('div');
  // element.className = 'marker';
  // element.style.backgroundImage = `url('${marker.image_url}')`;
  // element.style.backgroundSize = 'contain';
  // element.style.width = '25px';
  // element.style.height = '25px';

  // Passing element into the map
    new mapboxgl.Marker()
      .setLngLat([ marker.lng, marker.lat ])
      .setPopup(popup)
      .addTo(map);
  });

};

const fitMapToMarkers = (map, markers) => {
  if (markers.length > 0) {
    const bounds = new mapboxgl.LngLatBounds();
    markers.forEach(marker => {
      if (marker !== null) {
        bounds.extend([ marker.lng, marker.lat ])
      }
    });
    map.fitBounds(bounds, { padding: 70, maxZoom: 15 });
  }
};

const mapHandler = (name, long, lat) =>{
  console.log("Longitude:", long);
  console.log("Latitude:", lat);
  const popupHTML = `<strong>${name}</strong>`;

  mapInstance.panTo([long,lat])

  new mapboxgl.Popup().setLngLat([long, lat]).setHTML(popupHTML).addTo(mapInstance);
};

const initMapbox = () => {
  if (mapElement) {
    const markers = JSON.parse(mapElement.dataset.markers);
    const map = buildMap(markers[0]);
    addMarkersToMap(map, markers);
    fitMapToMarkers(map, markers);


  }
};

export { initMapbox, mapHandler };

