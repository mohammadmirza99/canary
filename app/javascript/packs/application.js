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

    // Some math to calculate where it was moved to
    const position = Array.from(element.parentNode.children).indexOf(element);
    const time = times[Math.floor(position / 7)];
    const day = days[position % 7];

    console.log(`${activityName} moved to ${day} ${time}`);
  }, 0);
});
