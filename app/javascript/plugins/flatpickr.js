import flatpickr from "flatpickr"
import "flatpickr/dist/themes/material_blue"
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"


// if date format is = 1/2/2020, add a 0 before month, day.
export const doubleDigit = (str) => {
  if (str.toString().length === 1) {
    return `0${str.toString()}`;
  } else {
    return str.toString();
  }
};

// Function to translate the date into ISO format
export const getDateISO = (date) => {
  const dt = new Date(date);
  return `${dt.getFullYear()}-${doubleDigit(dt.getMonth() + 1)}-${doubleDigit(dt.getDate())}`
}

flatpickr("#range_start", {
  altInput: true,
  altFormat: "F j, Y",
  dateFormat: "Y-m-d",
  mode: "range",
  // plugins: [new rangePlugin({ input: "#range_start"})],
  onClose(selectedDates, dateStr, instance) {
    console.log(selectedDates)
    instance.setDate(selectedDates)
  },
  onChange(selectedDates, dateStr, instance) {
    console.log(selectedDates);
    // target start date node (hidden field) and store in variable
    const start = getDateISO(selectedDates[0])
    // console.log(start)
    // target end date node (hidden field) and store in variable
    const end = getDateISO(selectedDates[1])


    // reassign the <input id="start_date">.value of start date to the user selected start date
    const start_date = document.getElementById("start_date")
    start_date.value = start;

    // reassign the <input id="start_date">.value of start date to the user selected start date
    const end_start = document.getElementById("end_date")
    end_start.value = end;



    // reassign the .value of end date to the user selected end date
  }
})

