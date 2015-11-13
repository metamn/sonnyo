{% extends '../../project/templates/default/default.html.swig' %}
{% block content %}

  {% set image = images | first %}
  {% set weather = weather %}
  {% include '../../project/header/header.html.swig' %}

  {% set video = video %}
  {% include '__webcam/home__webcam.html.swig' %}

  {% set slides = slides %}
  {% include '../../project/slider/slider.html.swig' %}

  {% set image = images[1] %}
  {% set fb = fb %}
  {% include '__map-and-news/home__map-and-news.html.swig' %}

  {% set pictograms = pictograms %}
  {% include '../../project/tickets/tickets.html.swig' %}

  {% set contact = contact %}
  {% include '../../project/contact/contact.html.swig' %}
{% endblock %}
