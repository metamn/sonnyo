var weather = function(containerID) {
  var container = document.querySelector(containerID);
  var url = container.dataset.url;

  var xmlhttp = new XMLHttpRequest();
  xmlhttp.open("GET", url, true);
  xmlhttp.send();

  // Process request
  xmlhttp.onreadystatechange = function() {
    if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
      console.log('response:' + xmlhttp.responseText);
      var result = JSON.parse(xmlhttp.responseText);
      parseResult(result);
    }
  }

  // Process result
  function parseResult(result) {
    console.log('result:' + result);
  }
}

weather('.weather .openweather');
