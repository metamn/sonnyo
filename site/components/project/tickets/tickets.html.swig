<section class="tickets">
  <h3 class="tickets__title">{{ title.en }} / {{ title.ro }} / {{ title.hu }}</h3>

  {% include '__lap/tickets__lap.html.swig' %}
  {% include '__card/tickets__card.html.swig' %}
  {% include '__pass/tickets__pass.html.swig' %}
</section>
