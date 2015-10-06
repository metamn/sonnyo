<nav class="logo">
  <h3>Logo</h3>

  {% set image = image %}
  {% set link = { url: site.url, type: 'external', title: site.title } %}
  {% set image.link = link %}
  {% include '../../framework/structure/figure/figure.html.swig' %}
</nav>
