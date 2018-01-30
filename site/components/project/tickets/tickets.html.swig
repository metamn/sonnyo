<section class="tickets">
  <h3 class="tickets__title">{{ title.en }} / {{ title.ro }} / {{ title.hu }}</h3>

  {% for ticket in tickets %}
    {% include "../ticket/ticket.html.swig" %}
  {% endfor %}
</section>
