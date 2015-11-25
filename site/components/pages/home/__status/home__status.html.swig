<section class="home__status">
  <h3>Status, weather, snow data</h3>

  {% include '../../../project/status/status.html.swig' %}
  <div class="snow-and-weather">
    {% include '../../../project/snow/snow.html.swig' %}
    {% include '../../../project/weather/weather.html.swig' %}
  </div>
</section>
