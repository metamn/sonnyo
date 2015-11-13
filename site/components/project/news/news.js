var news = function(containerID) {
  jsonAPICall(containerID, function(result) {
    var data = result.data;

    for (var i = 0; i < 4; i++) {
      var item = document.createElement('div');
      item.className = 'news-item';

      var message = document.createElement('div');
      message.className = 'news-item__message';

      // Split ro / hu entries into <p>
      var m = data[i].message;
      m = m.split("\n\n").join("</p><p>");
      message.innerHTML = '<p>' + m + '</p>';


      var date = document.createElement('div');
      date.className = 'news-item__date';

      var date2 = document.createElement('span');
      date2.className = 'date';

      // created_time: 2015-02-26T13:33:25+0000
      var d = data[i].created_time.split("T");
      if (d.length > 0) {
        date2.innerHTML = d[0].replace(/\-/g, " / ");
      }

      date.appendChild(date2);
      item.appendChild(date);
      item.appendChild(message);

      var container = document.querySelector(containerID);
      container.appendChild(item);
    }
  });
}

news('.news .news__body');
