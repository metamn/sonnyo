<address class="contact__address">
  <p class="p address">
    {{ contact.address }}
  </p>

  <p class="p copyright">
    {{ contact.copyright | safe }}
    {% set link = contact.protectia %}
    {% include '../../../framework/design/typography/elements/link/link.html.swig' %}
  </p>
</address>
