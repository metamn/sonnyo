<section class="webcam">
  <h3>Webcam</h3>

  {% set video = video %}
  {% include '__video/webcam__video.html.swig' %}

  {% set image = video.image %}
  {% include '__image/webcam__image.html.swig' %}
</section>
