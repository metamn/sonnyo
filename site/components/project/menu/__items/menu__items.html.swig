<div class="menu__items">
  {% for link in menu %}
    <div class="menu-item">
      {% include '../../../framework/design/typography/elements/link/link.html.swig' %}
    </div>
  {% endfor %}
</div>
