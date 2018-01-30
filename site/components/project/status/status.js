var setProgramForStatus = function(ID) {
  var ref1 = firebase.database().ref('/program-start');

  ref1.once("value").then(function(snapshot) {
    var start = snapshot.val();

    var ref2 = firebase.database().ref('/program-end');
    ref2.once("value").then(function(snapshot) {
      var end = snapshot.val();

      var message = document.querySelector(ID);
      message.innerHTML += " " + start + " - " + end;
    });
  });
}


var setStatus = function(ID, klassname) {
  var ref = firebase.database().ref('/status');

  ref.once("value").then(function(snapshot) {
    var key = snapshot.val();
    var klass = klassname + '--' + key;

    if (key == "open") {
      setProgramForStatus('.status .status__message:nth-of-type(3) .p:last-of-type');
    }

    var messages = document.querySelectorAll(ID);
    for (var i = 0; i < messages.length; i++) {
      if (messages[i].classList.contains(klass)) {
        messages[i].classList.remove(klassname + '--hidden');
        messages[i].classList.add(klassname + '--visible');
      } else {
        messages[i].classList.remove(klassname + '--visible');
        messages[i].classList.add(klassname + '--hidden');
      }
    }
  });
}

setStatus('.status .status__message', 'status__message');
