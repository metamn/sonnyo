{% extends '../../project/templates/default/default.html.swig' %}
{% block content %}

  {% set video = video %}
  {% include '../../project/background-video/background-video.html.swig' %}

  {% set image = images | first %}
  {% set navigation = navigation %}
  {% include '../../project/header/header.html.swig' %}

  {% set status = status %}
  {% set snow = snow %}
  {% set weather = weather %}
  {% include '__status/home__status.html.swig' %}

  {% set fb = fb %}
  {% include '../../project/news/news.html.swig' %}


  {% set image = images[1] %}
  {% include '../../project/map/map.html.swig' %}

{% endblock %}
