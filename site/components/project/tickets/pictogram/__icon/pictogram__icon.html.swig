{% if pictogram.icon %}
  <div class="pictogram__icon">
    {% set icon = { name: pictogram.icon, title: pictogram.name } %}
    {% include '../../../../framework/structure/icon/icon.html.swig' %}
  </div>
{% endif %}
