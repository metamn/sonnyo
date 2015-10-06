{% extends '../../project/templates/default/default.html.swig' %}
{% block content %}

  {% set image = images | first %}
  {% set menu = menu %}
  {% include '../../project/header/header.html.swig' %}

  {% set slides = slides %}
  {% include '../../project/slider/slider.html.swig' %}

{% endblock %}
