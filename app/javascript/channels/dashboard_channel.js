import consumer from "./consumer"

consumer.subscriptions.create("DashboardChannel", {
  connected() {
    console.log("reseived");

  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
// debugger
    if(data['bookings'] != null){
      $('#bookings').html("");
      for (i = 0; i < data['bookings'].length; i++) {
        $('#bookings').append('<li class="list-group-item"> '+ data['bookings'][i]["full_address"]+'</li>');
      }
    }

  }
});

