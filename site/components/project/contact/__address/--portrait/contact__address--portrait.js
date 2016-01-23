var showAddress = function(triggerID, targetID) {
  var trigger = document.querySelector(triggerID);
  var target = document.querySelector(targetID);

  trigger.addEventListener('click', clickTrigger, false);

  function clickTrigger(event) {
    var open = target.classList.contains('address--active');

    if (open) {
      target.classList.remove('address--active');
    } else {
      target.classList.add('address--active');
    }
  }
}

showAddress('.contact__address .company__name', '.contact__address .address');
