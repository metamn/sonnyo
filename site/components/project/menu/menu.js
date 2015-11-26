var menuItemClick = function(itemID) {
  var items = document.querySelectorAll(itemID);

  for (var i = 0; i < items.length; i++) {
    items[i].addEventListener('click', click);
  }

  function click() {
    var menu = document.querySelector('.hamburger-menu');
    //menu.click();

    var url = this.dataset.url;
    var destination = document.querySelector('.' + url);
    scrollTo(destination, 1000, easing.easeOutQuad);
  }
}

menuItemClick('.menu__items .li')
