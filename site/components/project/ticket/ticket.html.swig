<article class="ticket">
  <h3 class="title">{{ ticket.title }}</h3>

  <div class="head">
    <div class="empty"></div>

    {% set pictogram = pictograms[0] %}
    {% include '../../framework/design/decorations/pictogram/pictogram.html.swig' %}

    {% set pictogram = pictograms[1] %}
    {% include '../../framework/design/decorations/pictogram/pictogram.html.swig' %}
  </div>

  {% for item in ticket.items %}
    <div class="row">
      {% set pictogram = { text: item.text, number: item.quantity } %}
      {% include '../../framework/design/decorations/pictogram/pictogram.html.swig' %}

      {% for price in item.prices %}
        <div class="value">
          <span class="text">{{ price }} RON</span>
        </div>
      {% endfor %}
    </div>
  {% endfor %}
</article>
