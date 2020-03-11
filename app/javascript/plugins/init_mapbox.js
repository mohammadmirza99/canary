//----------------
//Mapbox code refactored.

import mapboxgl from 'mapbox-gl';

const mapElement = document.getElementById('map');

let mapInstance;
let allMarkers = [];

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
    style: 'mapbox://styles/mohammadmirza99/ck7m6srk80x1l1jnsax1bhfyz'
  });

  return mapInstance
};

const addMarkersToMap = (map, markers) => {
  markers.forEach((marker) => {
    const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);
    popup.open = true;

  // Custom marker code
  const element = document.createElement('div');
  element.className = 'marker';
  element.style.backgroundImage = `url('${marker.image_url}')`;
  element.style.backgroundSize = 'contain';
  element.style.width = '40px';
  element.style.height = '40px';

  // Passing element into the map
    const newMarker = new mapboxgl.Marker(element)
      .setLngLat([ marker.lng, marker.lat ])
      .setPopup(popup)
      .addTo(map);

    allMarkers.push(newMarker);
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

const mapHandler = (long, lat) =>{
  // console.log("Longitude:", long);
  // console.log("Latitude:", lat);

  // const popupHTML = `<div><strong>${name}</strong></div>
  // <div>${description}</div>
  // <div><strong>${address}</strong></div>`;

  // allMarkers[0].getElement().click();
  const foundMarker = allMarkers.find(marker => {
    const coords = marker.getLngLat();
    if (coords.lng === long && coords.lat === lat) {
      return true;
    } else {
      return false;
    }
  });

  if (foundMarker) {
    foundMarker.getElement().click()
  }

  mapInstance.panTo([long,lat])
  // new mapboxgl.Popup().setLngLat([long, lat]).setHTML(popupHTML).addTo(mapInstance);

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

