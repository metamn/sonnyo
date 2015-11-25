{% extends '../../project/templates/default/default.html.swig' %}
{% block content %}

  {% set video = video %}
  {# include '../../project/background-video/background-video.html.swig' #}

  {% set slide = slides[0] %}
  {% include '../../project/background-image/background-image.html.swig' %}

  {% set image = images | first %}
  {% set navigation = navigation %}
  {% include '../../project/header/header.html.swig' %}

  {% set status = status %}
  {% set snow = snow %}
  {% set weather = weather %}
  {% set icon = icons[0] %}
  {% include '__status/home__status.html.swig' %}

  {% set fb = fb %}
  {% include '../../project/news/news.html.swig' %}

  {% set image = images[1] %}
  {# include '../../project/map/map.html.swig' #}

  {% set map = map %}
  {# include '../../project/directions/directions.html.swig' #}

  {% set slides = slides %}
  {# include '../../project/slider/slider.html.swig' #}

{% endblock %}
