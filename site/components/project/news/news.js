// Load news from Facebook
// - if all fine hide the default error messages
var news = function(containerID) {
  var container = document.querySelector(containerID);
  var success = true;

  jsonAPICall(containerID, function(result) {
    var data = result.data;

    if (data) {
      success = getNews(data);
    } else {
      success = false;
    }
  });

  if (success) {
    var errors = container.querySelectorAll(".news-item--error");
    for (var j = 0; j < errors.length; j++) {
      errors[j].classList.add("hidden");
    }
  }

  // Get the news
  // - not all data received are news
  // - we'll loop through data 20 times trying to get the first 3 news
  // - returns true if all news were loaded
  function getNews(data) {
    var news = 0;

    for (var j = 0; j < 20; j++) {
      if (news === 3) {
        break;
      }

      var m = data[j].message;
      if (m) {
        news++;

        var item = document.createElement("div");
        item.className = "news-item";

        var message = document.createElement("div");
        message.className = "news-item__message";

        // Split ro / hu entries into <p>
        m = m.split("\n\n").join("</p><p>");
        message.innerHTML = "<p>" + m + "</p>";

        var date = document.createElement("div");
        date.className = "news-item__date";

        var date2 = document.createElement("span");
        date2.className = "date";

        // created_time: 2015-02-26T13:33:25+0000
        var d = data[j].created_time.split("T");
        if (d.length > 0) {
          date2.innerHTML = d[0].replace(/\-/g, " / ");
        }

        date.appendChild(date2);
        item.appendChild(date);
        item.appendChild(message);

        container.appendChild(item);
      }
    }

    return news === 3;
  }
};

//news('.news .news__body');
