var setPhone = function(ID) {
  var ref = firebase
    .database()
    .ref("contact")
    .child("tel");
  var container = document.querySelector(ID);

  ref.once("value").then(function(snapshot) {
    var val = snapshot.val();

    if (val) {
      container.innerHTML = val;
    }
  });
};

setPhone(".contact .phone");
