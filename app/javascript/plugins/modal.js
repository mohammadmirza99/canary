import swal from 'sweetalert';

// Modal for generating the itinerary.
export const generateModal = () =>swal({
  title: "Generating Itinerary",
  text: "Hang tight, we are hard at work!",
  icon: "success",
  buttons: false
  // dangerMode: true,
})
