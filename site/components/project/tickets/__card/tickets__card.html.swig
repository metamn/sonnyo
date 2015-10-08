<article class="tickets__card">
  {% set pictogram = pictograms[5] %}
  {% set title = pictogram.text | join(' / ') %}
  <h3 class="title">{{ title | capitalize }}</h3>

  {# card, adult, children #}
  <div class="head">
    <div class="empty"></div>

    {% set pictogram = pictograms[3] %}
    {% include '../../../framework/design/decorations/pictogram/pictogram.html.swig' %}

    {% set pictogram = pictograms[4] %}
    {% include '../../../framework/design/decorations/pictogram/pictogram.html.swig' %}
  </div>

  <div class="row">
    <div class="item">
      <span>20 pt</span>
    </div>

    <div class="value">
      <span>25 lei</span>
    </div>

    <div class="value">
      <span>17 lei</span>
    </div>
  </div>

  <div class="row">
    <div class="item">
      <span>40 pt</span>
    </div>

    <div class="value">
      <span>40 lei</span>
    </div>

    <div class="value">
      <span>30 lei</span>
    </div>
  </div>

  <div class="row">
    <div class="item">
      <span>120 pt</span>
    </div>

    <div class="value">
      <span>105 lei</span>
    </div>

    <div class="value">
      <span>80 lei</span>
    </div>
  </div>
</article>
