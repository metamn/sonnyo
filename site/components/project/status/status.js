var setStatus = function(ID, klassname) {
  var ref = firebase.database().ref('/status');

  ref.once("value").then(function(snapshot) {
    var key = snapshot.val();
    var klass = klassname + '--' + key;

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
