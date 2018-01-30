var setSnow = function(ID) {
  var ref = firebase.database().ref('/snow');

  ref.once("value").then(function(snapshot) {
    var val = snapshot.val();

    var snow = document.querySelector(ID);
    if (snow) {
      snow.innerHTML = val + 'cm';
    }
  });
}

setSnow('.snow .cm');
