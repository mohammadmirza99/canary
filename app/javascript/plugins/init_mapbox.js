//----------------
//Mapbox code refactored.

import mapboxgl from 'mapbox-gl';

const mapElement = document.getElementById('map');

const buildMap = (initMarker) => {
  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  return new mapboxgl.Map({
    container: 'map',
    zoom: 10,
    center: [initMarker.lng, initMarker.lat],
    style: 'mapbox://styles/mapbox/streets-v10'
  });
};

const addMarkersToMap = (map, markers) => {
  markers.forEach((marker) => {
    if (marker !== null) {
      const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);
      new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup)
        .addTo(map);
    }
  });

};

const fitMapToMarkers = (map, markers) => {
  if (markers !== null) {
    const bounds = new mapboxgl.LngLatBounds();
    markers.forEach(marker => {
      if (marker !== null) {
        bounds.extend([ marker.lng, marker.lat ])
      }
    });
    map.fitBounds(bounds, { padding: 70, maxZoom: 15 });
  }
};

const initMapbox = () => {
  if (mapElement) {
    const markers = JSON.parse(mapElement.dataset.markers);
    const map = buildMap(markers[0]);
    addMarkersToMap(map, markers);
    fitMapToMarkers(map, markers);


  }
};

export { initMapbox };

