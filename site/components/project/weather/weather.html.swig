<aside class="weather">
  <h3>Weather</h3>

  <div class="openweather" data-url="{{ weather.url }}{{ weather.city }}{{ weather.api }}{{ weather.units }}">
    <div class="openweather__icon">
      <img src="{{ weather.icon }}" alt="Openweather icon" class="img">
    </div>

    <div class="openweather__celsius">
      <span class="value"></span>
      <span class="label">&deg;C</span>
    </div>
  </div>
</aside>
