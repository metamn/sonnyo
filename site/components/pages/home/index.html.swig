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
  {% set title = navigation[1] %}
  {% include '../../project/news/news.html.swig' %}

  {% set image = images[1] %}
  {% set title = navigation[2] %}
  {% include '../../project/map/map.html.swig' %}

  {% set pictograms = pictograms %}
  {% set title = navigation[3] %}
  {% include '../../project/tickets/tickets.html.swig' %}

  {% set contact = contact %}
  {% set icon = icons[1] %}
  {% set title = navigation | last %}
  {% include '../../project/contact/contact.html.swig' %}

{% endblock %}
