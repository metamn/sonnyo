<aside class="contact__links">
  <h3>Links</h3>

  <ul class="ul">
    {% for link in contact.links %}
      <li class="li">
        {% include '../../../framework/design/typography/elements/link/link.html.swig' %}
      </li>
    {% endfor %}

    <li class="li phone">
      {{ contact.phone }}
    </li>
  </ul>
</aside>
