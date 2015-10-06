var weather = function(containerID) {
  var container = document.querySelector(containerID);
  var url = container.dataset.url;

  // JS JSON AJAX Call to an API endpoint
  // - http://www.w3schools.com/json/json_http.asp
  var xmlhttp = new XMLHttpRequest();
  xmlhttp.open("GET", url, true);
  xmlhttp.send();

  // Process request
  xmlhttp.onreadystatechange = function() {
    if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
      var result = JSON.parse(xmlhttp.responseText);
      parseResult(result);
    }
  }

  // Process result
  function parseResult(result) {
    console.log('result:' + JSON.stringify(result));
    var celsius = container.querySelector('.openweather__celsius .value');
    celsius.innerHTML = result.main.temp;

    var icon = container.querySelector('.openweather__icon .img');
    icon.src += result.weather[0].icon + ".png";
  }
}

weather('.weather .openweather');
