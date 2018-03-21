console.log("Hello from the JavaScript console!");

$.ajax({
  url: ('http://api.openweathermap.org/data/2.5/weather?q=new%20york,US&appid=bcb83c4b54aee8418983c2aff3073b3b'),
  type: 'GET',
  success: function(weatherData) {

    console.log('Weather data is below');
    console.log(weatherData);
  }
});

console.log('Outside of the ajax request');
