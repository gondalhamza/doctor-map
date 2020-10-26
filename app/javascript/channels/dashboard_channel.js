import consumer from "./consumer"

consumer.subscriptions.create("DashboardChannel", {
  connected() {
    console.log("reseived");

    alert("Connected");
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    $('#message').append('<p class="form-control"> '+ data.location+'</p>');
  }
});

export default DashboardChannel;