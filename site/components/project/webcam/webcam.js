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

    videoContainer.appendChild(iframe);
  }

  function closeVideo() {
    container.classList.remove('webcam--active');

    var iframe = videContainer.querySelector('.iframe');
    videoContainer.remove(iframe);
  }
}


webcam('.webcam', '.webcam__play', '.webcam__iframe', '.webcam__close');
