var setProgram = function(ID) {
  var ref = firebase.database().ref('/program');

  ref.once("value").then(function(snapshot) {
    var program = snapshot.val();
    var start = program.start;
    var end = program.end;

    var program = document.querySelectorAll(ID);
    for (var i = 0; i < program.length; i++) {
      for (var j = 0; j < program[i].childNodes.length; j++) {
        if (program[i].childNodes[j].className == 'start') {
          program[i].childNodes[j].innerHTML = start;
        }

        if (program[i].childNodes[j].className == 'end') {
          program[i].childNodes[j].innerHTML = end;
        }
      }
    }
  });
}

setProgram('.program .hours');
