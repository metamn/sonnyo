{% extends '../../project/templates/default/default.html.swig' %}
{% block content %}

  {% set image = images | first %}
  {% set navigation = navigation %}
  {% include '../../project/header/header.html.swig' %}

  {% set image = images[2] %}
  {% include '../../project/background-image/background-image.html.swig' %}

  {% set video = video %}
  {% set icon = icons[1] %}
  {% include '../../project/webcam/webcam.html.swig' %}

  {% set status = status %}
  {% set snow = snow %}
  {% set weather = weather %}
  {% set icon = icons[0] %}
  {% include '__status/home__status.html.swig' %}

  {% set fb = fb %}
  {% set nofbnews = nofbnews %}
  {% set link = contact.links[0] %}
  {% set title = navigation[0] %}
  {% include '../../project/news/news.html.swig' %}

  {% set image = images[1] %}
  {% set title = navigation[1] %}
  {% include '../../project/map/map.html.swig' %}

  {% include '__tickets-and-program/home__tickets-and-program.html.swig' %}

  {% set slides = slides %}
  {% set title = navigation[3] %}
  {% include '../../project/slider/slider.html.swig' %}

  {% set bullets = slides %}
  {% include '../../project/slider/__bullets/slider__bullets.html.swig' %}

  {% set contact = contact %}
  {% set icons = icons %}
  {% set title = navigation | last %}
  {% set image = images[3] %}
  {% include '../../project/contact/contact.html.swig' %}

{% endblock %}
