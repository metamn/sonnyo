{% extends '../../project/templates/default/default.html.swig' %}
{% block content %}

  {% set image = images | first %}
  {% set weather = weather %}
  {% include '../../project/header/header.html.swig' %}

  {% set status = status %}
  {% include '../../project/status/status.html.swig' %}

  {% set navigation = navigation %}
  {% set navigation_mobile = navigation_mobile %}
  {% include '../../project/navigation/navigation.html.swig' %}

  {% set video = video %}
  {% include '__webcam/home__webcam.html.swig' %}

  {% set slides = slides %}
  {% include '../../project/slider/slider.html.swig' %}

  {% set image = images[1] %}
  {% include '../../project/map/map.html.swig' %}

  {% set fb = fb %}
  {% include '../../project/news/news.html.swig' %}

  {% set pictograms = pictograms %}
  {% include '../../project/tickets/tickets.html.swig' %}

  {% set contact = contact %}
  {% include '../../project/contact/contact.html.swig' %}
{% endblock %}
