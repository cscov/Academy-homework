window.setTimeout(hammerTime('now'), 5000);

function hammerTime(time) {
  window.setTimeout(function () {
    alert(`${time} is hammertime!`)
  }, 5000);
}
