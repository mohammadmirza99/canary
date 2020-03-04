import "bootstrap";
import { Swappable, Plugins } from '@shopify/draggable';

const days = [
  "Monday",
  "Tuesday",
  "Wednesday",
  "Thursday",
  "Friday",
  "Saturday",
  "Sunday"
]

const times = [
  "Morning",
  "Afternoon",
  "Evening"
]

const containerSelector = '.card-zone';
const containers = document.querySelectorAll(containerSelector);

const swappable = new Swappable(containers, {
  draggable: ".card-cell",
  mirror: {
    appendTo: containerSelector,
    constrainDimensions: true,
  },
  plugins: [Plugins.Snappable],
});

swappable.on('drag:stop', (event) => {
  setTimeout(() => {
    const element = event.data.originalSource;
    const activityName = element.innerText;

  //   // Some math to calculate where it was moved to
    const position = Array.from(element.parentNode.children).indexOf(element);
    const time = times[Math.floor(position / 7)];
    const day = days[position % 7];

  //   console.log(`${activityName} moved to ${day} ${time}`);


  }, 0);
});





// Add an event to hide a checkbox in the form


// select the dropdown
const dropdown = document.querySelector("#categories");
console.log(dropdown);

// select the value to hide the checkbox if the value is not selected
const valueRelax = document.getElementById("relax");
console.log('checkbox', valueRelax);
const valueFamily = document.getElementById("family");
console.log('checkbox', valueFamily)
const valueParty = document.getElementById("party");
const valueAdventure = document.getElementById("adventure");


// add an event, when the user click in the dropdown
// dropdown.addEventListener("click", (event) => {
//   console.log(event.target)
// })


dropdown.addEventListener("change", (event) => {
  console.log(event.target.value);
  const { value } = event.target
    if (value == "Relax") {
      valueFamily.style.display = "none";
        // if the user change the value hide
    }
});




















