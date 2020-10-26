import consumer from "./consumer"

consumer.subscriptions.create("DashboardChannel", {
  
  connected() {
    console.log("conencted");
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {

    if(data['bookings'] != null){

      $('#bookings').html("");
      
      for (i = 0; i < data['bookings'].length; i++) {
        $('#bookings').append('<li data-location="'+data['bookings'][i]["full_address"]+
          '" data-time="'+data['bookings'][i]["begins_at"]+'"class="list-group-item"> '+ 
          data['bookings'][i]["full_address"]+
          '<br><small>'+data['bookings'][i]["begins_at"]+
          '</small></li>');
      }
    }

  }
});

