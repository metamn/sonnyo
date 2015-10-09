var news = function(containerID) {
  jsonAPICall(containerID, function(result) {
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

      var date2 = document.createElement('span');
      date2.className = 'date';

      var d = new Date(data[i].created_time);
      date2.innerHTML = d.toLocaleDateString();

      date.appendChild(date2);
      item.appendChild(date);
      item.appendChild(message);

      var container = document.querySelector(containerID);
      container.appendChild(item);
    }
  });
}

news('.news .news__body');
