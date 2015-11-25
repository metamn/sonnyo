<section class="contact">
  <h3>Contact</h3>

  <ul class="ul">
    <li class="facebook">
      {% set link = contact.link %}
      {% include '../../framework/design/typography/elements/link/link.html.swig' %}
    </li>
    <li class="phone">
      {{ contact.phone }}
    </li>
    <li class="directions">
      {% include '../../framework/structure/icon/icon.html.swig' %}
      <span class="title">{{ icon.title }}</span>
    </li>
  </ul>
</section>
