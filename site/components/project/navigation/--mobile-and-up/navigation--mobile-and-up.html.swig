<article class="navigation--mobile-and-up">
  <h3>Navigation for mobile and up</h3>

  <ul class="ul">
    {% for item in navigation %}
      <li class="li" data-url="#{item.url}">{{ item.en }}</li>
    {% endfor %}
  </ul>

  <ul class="ul">
    {% for item in navigation %}
      <li class="li" data-url="#{item.url}">{{ item.ro }}</li>
    {% endfor %}
  </ul>

  <ul class="ul">
    {% for item in navigation %}
      <li class="li" data-url="#{item.url}">{{ item.hu }}</li>
    {% endfor %}
  </ul>
</article>
