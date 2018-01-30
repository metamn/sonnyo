var setTickets = function(ID) {
  var ref = firebase.database().ref('/tickets');

  ref.once("value").then(function(snapshot) {
    snapshot.forEach(function(childSnapshot) {
      var childData = childSnapshot.val();
      console.log('title: ' + childData.title);
    });
  });
}

setTickets('.tickets');
