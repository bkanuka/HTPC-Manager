$(document).ready(function(){
  $('.spinner').show();
  getTorrents();
  getStatus();
  setInterval(function() {
     getTorrents();
     getStatus();
  }, 5000);
});