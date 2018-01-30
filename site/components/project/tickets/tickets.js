var createTicketCardQuantity = function(data) {
  var ret = '';
  ret += '<div class="pictogram__number">';
  ret += '<span class="number">' + data.quantity + '</span>';
  ret += '</div>';

  if (data.text) {
    ret += '<div class="pictogram__text">';

    for (var i = 0; i < data.text.length; i++) {
      ret += '<span class="text">' + data.text[i] + '</span>';
    }

    ret += '</div>';
  }

  return ret;
}

function createTicketCardValues(data) {
  var ret = '';

  if (data.prices) {
    for (var i = 0; i < data.prices.length; i++) {
      ret += '<div class="value">';
      ret += '<span>' + data.prices[i] + ' RON</span>';
      ret += '</div>';
    }
  }

  return ret;
}


var createTicketCardRows = function(data) {
  var ret = '';

  if (data.items) {
    for (var i = 0; i < data.items.length; i++) {
      ret += '<div class="row">';
      ret += createTicketCardQuantity(data.items[i]);
      ret += createTicketCardValues(data.items[i]);
      ret += '</div>';
    }
  }


  return ret;
}


var createTicketCardHeader = function() {
  var ret = '';
  ret += '<div class="head">';
  ret += '<div class="empty"></div>';
  ret += '<div class="pictogram__icon"><div class="icon"><img class="img" src="http://www.somlyo.ro/assets/images/icon-children.svg" alt="children"></div></div><div class="pictogram__text"><span class="text">18-</span></div>';
  ret += '<div class="pictogram__icon"><div class="icon"><img class="img" src="http://www.somlyo.ro/assets/images/icon-adult.svg" alt="adult"></div></div><div class="pictogram__text"><span class="text">18+</span></div>';
  ret += '</div>';

  return ret;
}


var createTicketCard = function(data) {
  var ret = '';
  ret += '<article class="card">';
  ret += '<h3 class="title">' + data.title + '</h3>';
  ret += createTicketCardHeader();
  ret += createTicketCardRows(data);
  ret += '</article>';

  return ret;
}


var setTickets = function(ID) {
  var ref = firebase.database().ref('/tickets');
  var container = document.querySelector(ID);

  ref.once("value").then(function(snapshot) {
    snapshot.forEach(function(childSnapshot) {
      var childData = childSnapshot.val();
      container.innerHTML += createTicketCard(childData);
    });
  });
}

setTickets('.tickets');
