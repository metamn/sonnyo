<aside class="status">
  <h3>Status</h3>

  {% for status in statuses %}
    {% set klass = '' %}
    {% if loop.first %}
      {% set klass = 'status__message--visible' %}
    {% endif %}

    <div class="status__message status__message--{{ status.name }} {{ klass }}">
      {% for message in status.messages %}
        <p class="p">{{ message }}</p>
      {% endfor %}
    </div>

    {% if (status.name == "open") %}
      {% include '../program/program.html.swig' %}
    {% endif %}
  {% endfor %}
</aside>
