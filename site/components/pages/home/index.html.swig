{% extends '../../project/templates/default/default.html.swig' %}
{% block content %}

  {% set video = video %}
  {% include '../../framework/structure/video-fullscreen/video-fullscreen.html.swig' %}

  {% set image = images | first %}
  {% set navigation = navigation %}
  {% include '../../project/header/header.html.swig' %}

  {% set status = status %}
  {% set snow = snow %}
  {% set weather = weather %}
  {% include '__status/home__status.html.swig' %}

{% endblock %}
