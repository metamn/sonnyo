{% extends '../../project/templates/default/default.html.swig' %}
{% block content %}

  {% set image = images | first %}
  {% set weather = weather %}
  {% include '../../project/header/header.html.swig' %}

  {% set slides = slides %}
  {% include '../../project/slider/slider.html.swig' %}


  {% set image = images[1] %}
  {% include '__map-and-news/home__map-and-news.html.swig' %}

{% endblock %}
