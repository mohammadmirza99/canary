import swal from 'sweetalert';

// Modal for generating the itinerary.
export const generateModal = () =>swal({
  title: "Generating Itinerary",
  text: "Hang tight, we are working hard!",
  icon: "success",
  // buttons: true,
  // dangerMode: true,
})
