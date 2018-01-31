<article class="news">
  <h3 class="news__title">{{ title.en }} / {{ title.ro }} / {{ title.hu }}</h3>

  <div class="news__body" data-url="{{ fb.url }}">
    {% for error in nofbnews %}
      {% include '../news-item/--error/news-item--error.html.swig' %}
    {% endfor %}
  </div>
</article>
