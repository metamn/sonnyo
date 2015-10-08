<section class="tickets">
  <h3 class="tickets__title">Tickets</h3>

  {% for pictogram in taxonomy %}
    {% include "pictogram/pictogram.html.swig" %}
  {% endfor %}

</section>
