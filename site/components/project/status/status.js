var setStatus = function() {
  var ref = firebase.database().ref('/status');
  console.log('ref:' + ref);

  ref.once("value").then(function(snapshot) {
    var key = JSON.stringify(snapshot);
    console.log('status:' + key);
  });
}

setStatus();
