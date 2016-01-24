var webcam = function(containerID, triggerID, videoContainerID, closerID) {
  var container = document.querySelector(containerID);
  var trigger = document.querySelector(triggerID);
  var closer = document.querySelector(closerID);
  var videoContainer = document.querySelector(videoContainerID);

  trigger.addEventListener('click', showVideo, false);
  closer.addEventListener('click', closeVideo, false);

  function showVideo() {
    container.classList.add('webcam--active');

    var url = videoContainer.dataset.url;

    var iframe = document.createElement('iframe');
    iframe.className = 'iframe';
    iframe.setAttribute('src', url);
    iframe.setAttribute('frameborder', '0');

    videoContainer.appendChild(iframe);

    // header must be hidden otherwise the close icon is not working
    // tried to fix with z-index but was not working
    document.querySelector('.header').style.display = "none";
  }

  function closeVideo() {
    container.classList.remove('webcam--active');

    var iframe = videoContainer.querySelector('.iframe');
    videoContainer.removeChild(iframe);

    // re-show header
    document.querySelector('.header').style.display = "flex";
  }
}


webcam('.webcam', '.webcam__play', '.webcam__iframe', '.webcam__close');
