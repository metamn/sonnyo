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
    {% set p = pictograms[8] %}
    {% set pictogram = { text: ["20 " + p.text[0]], icon: p.icon } %}
    {% include '../../../framework/design/decorations/pictogram/pictogram.html.swig' %}

    <div class="value">
      <span>25 lei</span>
    </div>

    <div class="value">
      <span>17 lei</span>
    </div>
  </div>

  <div class="row">
    {% set pictogram = { text: ["40 " + p.text[0]], icon: p.icon } %}
    {% include '../../../framework/design/decorations/pictogram/pictogram.html.swig' %}

    <div class="value">
      <span>40 lei</span>
    </div>

    <div class="value">
      <span>30 lei</span>
    </div>
  </div>

  <div class="row">
    {% set pictogram = { text: ["120 " + p.text[0]], icon: p.icon } %}
    {% include '../../../framework/design/decorations/pictogram/pictogram.html.swig' %}

    <div class="value">
      <span>105 lei</span>
    </div>

    <div class="value">
      <span>80 lei</span>
    </div>
  </div>
</article>
