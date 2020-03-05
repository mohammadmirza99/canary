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

const initSwappable = () =>{

  const containerSelector = '.card-zone';
  const containers = document.querySelectorAll(containerSelector);

  if (containers.length === 0){
    return;
  }

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
      // Target element
      const element = event.data.originalSource;

      // Get relevant variables
      const activityName = element.innerText;

     // Some math to calculate where it was moved to
      const position = Array.from(element.parentNode.children).indexOf(element);
      const time = times[Math.floor(position / 7)];
      const day = days[position % 7];

      // Grab CSRF Token to bypass rails security feature
      const csrfToken = document.querySelector('meta[name="csrf-token"]').content

      // Send request to backend with variables (i.e. the params) to update the backend
      fetch(`/selections/${element.dataset.selectionId}?date=${day}&time_of_day=${time}`, {
        method: "PATCH",
        headers: {
          'x-csrf-token': csrfToken
        }
      })
      .then(() => {
        console.log(`${activityName} moved to ${day} ${time}`);
      })

    }, 0);
  });
}

export {initSwappable}
