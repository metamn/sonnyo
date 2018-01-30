<div class="ticket__row">
  {% set pictogram = { text: item.text, number: item.quantity } %}
  {% include '../../../framework/design/decorations/pictogram/pictogram.html.swig' %}

  {% for price in item.prices %}
    <div class="value">
      <span class="text">{{ price }} RON</span>
    </div>
  {% endfor %}
</div>
