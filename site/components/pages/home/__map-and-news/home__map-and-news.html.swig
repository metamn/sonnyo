<section class="home__map-and-news">
  <h3>Map and News</h3>

  {% set fb = fb %}
  {% include '../../../project/news/news.html.swig' %}

  {% set image = image %}
  {% include '../../../project/map/map.html.swig' %}
</section>
