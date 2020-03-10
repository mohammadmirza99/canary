import "bootstrap";
import "../plugins/flatpickr";
// Code For Swappable
import {initSwappable} from '../plugins/swappable';
initSwappable();

// Code For Map

import mapboxgl from 'mapbox-gl';
import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox, mapHandler } from '../plugins/init_mapbox';
initMapbox();
window.mapHandler = mapHandler;

// Code for sweetalert

import { generateModal} from '../plugins/modal';
window.generateModal = generateModal;


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
//sidebar
$(document).ready(function () {
  var trigger = $('.hamburger'),
      overlay = $('.overlay'),
     isClosed = false;

    trigger.click(function () {
      hamburger_cross();
    });

    function hamburger_cross() {

      if (isClosed == true) {
        overlay.hide();
        trigger.removeClass('is-open');
        trigger.addClass('is-closed');
        isClosed = false;
      } else {
        overlay.show();
        trigger.removeClass('is-closed');
        trigger.addClass('is-open');
        isClosed = true;
      }
  }

  $('[data-toggle="offcanvas"]').click(function () {
        $('#wrapper').toggleClass('toggled');
  });
});




