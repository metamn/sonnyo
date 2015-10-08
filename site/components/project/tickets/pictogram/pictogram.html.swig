<div class="pictogram">
  {% include '__icon/pictogram__icon.html.swig' %}
  {% include '__number/pictogram__number.html.swig' %}

  {% set text = [pictogram.name, pictogram.ro, pictogram.hu] %}
  {% include '__text/pictogram__text.html.swig' %}
</div>
