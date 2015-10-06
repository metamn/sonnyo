<section class="slider">
  <h3>Slider</h3>

  {% set slides = slides %}
  {% include '__slides/slider__slides.html.swig' %}

  {% set bullets = slides %}
  {% include '__bullets/slider__bullets.html.swig' %}
</section>
