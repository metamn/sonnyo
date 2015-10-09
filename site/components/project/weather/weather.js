var weather = function(containerID) {
  jsonAPICall(containerID, function(result) {
    var container = document.querySelector(containerID);

    var celsius = container.querySelector('.openweather__celsius .value');
    celsius.innerHTML = Math.round(result.main.temp);

    var icon = container.querySelector('.openweather__icon .img');
    icon.src += result.weather[0].icon + ".png";
  });
}

weather('.weather .openweather');
