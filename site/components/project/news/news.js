var news = function(containerID) {
  var container = document.querySelector(containerID);
  var url = container.dataset.url;

  // JSON AJAX Call to an API endpoint
  // - http://www.w3schools.com/json/json_http.asp
  var xmlhttp = new XMLHttpRequest();
  xmlhttp.open("GET", url, true);
  xmlhttp.send();

  // Process request
  xmlhttp.onreadystatechange = function() {
    if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
      console.log('fb:' + xmlhttp.responseText);
      var result = JSON.parse(xmlhttp.responseText);
      parseResult(result);
    }
  }

  // Process result
  function parseResult(result) {
    var data = result.data;

    for (var i = 0; i <= 4; i++) {
      var item = document.createElement('div');
      item.className = 'item';

      var message = document.createElement('div');
      message.className = 'item__message';

      // Split ro / hu entries into <p>
      var m = data[i].message;
      m = m.split("\n\n").join("</p><p>");
      message.innerHTML = '<p>' + m + '</p>';



      var date = document.createElement('div');
      date.className = 'item__date';

      var d = new Date(data[i].created_time);
      date.innerHTML = d.toLocaleDateString();

      item.appendChild(date);
      item.appendChild(message);
      container.appendChild(item);
    }
  }
}

news('.news .news__body');
