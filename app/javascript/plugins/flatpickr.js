import flatpickr from "flatpickr"
import "flatpickr/dist/themes/material_blue"
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"

flatpickr("#range_start", {
  altInput: true,
  altFormat: "F j, Y",
  dateFormat: "Y-m-d",
  plugins: [new rangePlugin({ input: "#range_end"})]
})
