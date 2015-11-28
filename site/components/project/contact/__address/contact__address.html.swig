<address class="contact__address">
  <p class="p">
    {{ contact.address }}
  </p>

  <p class="p">
    {{ contact.copyright }}
    {% set link = contact.protectia %}
    {% include '../../../framework/design/typography/elements/link/link.html.swig' %}
  </p>
</address>
