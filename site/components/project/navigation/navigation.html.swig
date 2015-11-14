<section class="navigation">
  <h3>Navigation</h3>

  <ul>
    {% for item in navigation %}
      <li data-url="#{item.url}">{{ item.en }}</li>
    {% endfor %}
  </ul>

  <ul>
    {% for item in navigation %}
      <li data-url="#{item.url}">{{ item.ro }}</li>
    {% endfor %}
  </ul>

  <ul>
    {% for item in navigation %}
      <li data-url="#{item.url}">{{ item.hu }}</li>
    {% endfor %}
  </ul>
</section>
