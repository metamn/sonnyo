<article class="ticket">
  <h3 class="ticket__title">{{ ticket.title }}</h3>

  {% include "__head/ticket__head.html.swig" %}

  {% for item in ticket.items %}
    {% include "__row/ticket__row.html.swig" %}
  {% endfor %}
</article>
