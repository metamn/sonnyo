<section class="contact">
  <h3>Contact</h3>

  <ul class="ul">
    {% for link in contact.links %}
      <li class="li">
        {% include '../../framework/design/typography/elements/link/link.html.swig' %}
      </li>
    {% endfor %}

    <li class="li">
      {{ contact.phone }}
    </li>
  </ul>
</section>
