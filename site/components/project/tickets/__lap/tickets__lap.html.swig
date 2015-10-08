<article class="tickets__lap">
  <h3>Lap</h3>

  {# 1 lap,  day, night #}
  <div class="head">
    {% set pictogram = pictograms[0] %}
    {% include '../../../framework/design/decorations/pictogram/pictogram.html.swig' %}

    {% set pictogram = pictograms[1] %}
    {% include '../../../framework/design/decorations/pictogram/pictogram.html.swig' %}

    {% set pictogram = pictograms[2] %}
    {% include '../../../framework/design/decorations/pictogram/pictogram.html.swig' %}
  </div>

  {# adult #}
  <div class="row">
    {% set pictogram = pictograms[3] %}
    {% include '../../../framework/design/decorations/pictogram/pictogram.html.swig' %}

    <div class="value">
      <span>3 lei<span>
    </div>

    <div class="value">
      <span>4 lei<span>
    </div>
  </div>

  {# children #}
  <div class="row">
    {% set pictogram = pictograms[4] %}
    {% include '../../../framework/design/decorations/pictogram/pictogram.html.swig' %}

    <div class="value">
      <span>2 lei<span>
    </div>

    <div class="value">
      <span>3 lei<span>
    </div>
  </div>


  {# card #}
  <div class="row">
    {% set pictogram = pictograms[5] %}
    {% include '../../../framework/design/decorations/pictogram/pictogram.html.swig' %}

    <div class="value">
      <span>2 pt<span>
    </div>

    <div class="value">
      <span>3 pt<span>
    </div>
  <div>

</article>
