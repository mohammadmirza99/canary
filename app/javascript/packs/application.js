import "bootstrap";
import "../plugins/flatpickr";
import mapboxgl from 'mapbox-gl';
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';
initMapbox();

// Code For Swappable
import {initSwappable} from '../plugins/swappable';
initSwappable();


// select the dropdown
const dropdown = document.querySelector("#categories");
if (dropdown) {
  // select the value to hide the checkbox if the value is not selected
  // each value repressent [title,checkbox]
  const valueRelax = document.getElementById("relax");
  const valueFamily = document.getElementById("family");
  const valueParty = document.getElementById("party");
  const valueAdventure = document.getElementById("adventure");

  // content which is none in the home page
  const displayNone = document.getElementById("display_none");

  // add an event, when the user change the value in the dropdown
  dropdown.addEventListener("change", (event) => {
    console.log(event.target.value);
    const { value } = event.target
      // value selected in the dropdown -- hide other checkbox
       if (value == "Family") {
        // after the event show the checkbox wich are none
          displayNone.style.display = 'block';
        // hide the content wich are none
          valueFamily.classList.remove('hide');
          valueRelax.classList.add('hide');
          valueParty.classList.add('hide');
          valueAdventure.classList.add('hide');

      } else if (value == "Party") {
          displayNone.style.display = "block";
          valueParty.classList.remove('hide');
          valueRelax.classList.add('hide');
          valueFamily.classList.add('hide');
          valueAdventure.classList.add('hide');

      } else if (value == "Adventure") {
          displayNone.style.display = "block";
          valueAdventure.classList.remove('hide');
          valueRelax.classList.add('hide');
          valueParty.classList.add('hide');
          valueFamily.classList.add('hide');

      } else if (value == "Relax") {
          displayNone.style.display = "block";
          valueRelax.classList.remove('hide');
          valueParty.classList.add('hide');
          valueFamily.classList.add('hide');
          valueAdventure.classList.add('hide');
      }
  });
}




