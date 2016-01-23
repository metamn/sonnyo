<aside class="contact__directions">
  <h3>Directions</h3>

  {% set image = { title: image.title, name: image.name, link: contact.links[1].url } %}
  {% include '../../../framework/structure/figure/figure.html.swig' %}
</aside>
