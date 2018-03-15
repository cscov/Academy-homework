document.addEventListener("DOMContentLoaded", function(){
  var canvas = document.getElementById('mycanvas')
  canvas.height = 500;
  canvas.width = 500;

  var ctx = canvas.getContext('2d');
  ctx.fillStyle = 'red';
  void ctx.fillRect(10, 10, 100, 50);

  beginPath();
  void ctx.arc(200, 50, 0, 2 * Math.PI);
  ctx.strokeStyle = 'red';
});
