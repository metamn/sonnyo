<article class="tickets__pass">
  <h3 class="title">Pass / Abonament / Berlet</h3>

  {# pass, adult, children #}
  <div class="head">
    <div class="empty"></div>

    {% set pictogram = pictograms[3] %}
    {% include '../../../framework/design/decorations/pictogram/pictogram.html.swig' %}

    {% set pictogram = pictograms[4] %}
    {% include '../../../framework/design/decorations/pictogram/pictogram.html.swig' %}
  </div>


  <div class="row">
    {% set p = pictograms[6] %}
    {% set pictogram = { number: 4, text: p.text } %}
    {% include '../../../framework/design/decorations/pictogram/pictogram.html.swig' %}

    <div class="value">
      <span>30 lei</span>
    </div>

    <div class="value">
      <span>20 lei</span>
    </div>
  </div>

  <div class="row">
    {% set p = pictograms[6] %}
    {% set pictogram = { number: 8, text: p.text } %}
    {% include '../../../framework/design/decorations/pictogram/pictogram.html.swig' %}

    <div class="value">
      <span>50 lei</span>
    </div>

    <div class="value">
      <span>35 lei</span>
    </div>
  </div>

  <div class="row">
    {% set p = pictograms[7] %}
    {% set pictogram = { number: 2, text: p.text } %}
    {% include '../../../framework/design/decorations/pictogram/pictogram.html.swig' %}

    <div class="value">
      <span>120 lei</span>
    </div>

    <div class="value">
      <span>100 lei</span>
    </div>
  </div>
</article>
