var news = function(containerID) {
  jsonAPICall(containerID, function(result) {
    var container = document.querySelector(containerID);
    var data = result.data;

    // Not all data received are messages
    // We'll loop through data 20 times trying to get 3 messages
    var i = 0;
    for (var j = 0; j < 20; j++) {
      if (i === 3) { break; }

      var m = data[j].message;
      if (m) {
        i++;

        var item = document.createElement('div');
        item.className = 'news-item';

        var message = document.createElement('div');
        message.className = 'news-item__message';


        // Split ro / hu entries into <p>
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

        container.appendChild(item);
      }
    }

    if (i === 3) {
      var errors = container.querySelectorAll('.news-item--error');
      for (var j = 0; j < errors.length; j++) {
        errors[j].classList.add('hidden');
      }
    }

  });
}

news('.news .news__body');
