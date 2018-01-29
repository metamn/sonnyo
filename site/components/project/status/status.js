var getStatus = function(containerID) {
  jsonAPICall(containerID, function(result) {
    console.log(result)
  });
}

getStatus('.jsonstatus');
imagesLoading('.openweather__icon');
