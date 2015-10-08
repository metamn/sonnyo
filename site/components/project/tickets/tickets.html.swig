<section class="tickets">
  <h3 class="tickets__title">Tickets</h3>

  {% for pictogram in pictograms %}
    {% include "../../framework/design/decorations/pictogram/pictogram.html.swig" %}
  {% endfor %}

</section>
