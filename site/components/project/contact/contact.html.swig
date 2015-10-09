<section class="contact">
  <h3>Contact</h3>

  <ul class="ul">
    <li>
      {% set link = contact.link %}
      {% include '../../framework/design/typography/elements/link/link.html.swig' %}
    </li>
    <li>
      {{ contact.phone }}
    </li>
  </ul>
</section>
