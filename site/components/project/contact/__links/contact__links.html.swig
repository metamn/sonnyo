<aside class="contact__links">
  <h3>Links</h3>

  <ul class="ul">
    {% for link in contact.links %}
      <li class="li">
        {% set icon = icons[loop.index0 + 2] %}
        {% set icon.link = link %}
        {% include '../../../framework/structure/icon-with-link/icon-with-link.html.swig' %}
      </li>
    {% endfor %}

    <li class="li phone">
      {{ contact.phone }}
    </li>
  </ul>
</aside>
