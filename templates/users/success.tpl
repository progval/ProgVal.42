{% extends "base.tpl" %}
{% load i18n %}

{% block title %}
	{% if mode == "register" %}
		{% trans "Registered" %}
	{% endif %}
	{% if mode == "connect" %}
		{% trans "Connected" %}
	{% endif %}
	{% if mode == "disconnect" %}
		{% trans "Disconnected" %}
	{% endif %}
{% endblock %}

{% block body %}
	<div class="success">
		{% if mode == "register" %}
			{% trans "Successfully registered, you can now log in." %}
		{% endif %}
		{% if mode == "connect" %}
			{% trans "Successfully connected." %}
		{% endif %}
		{% if mode == "disconnect" %}
			{% trans "Successfully disconnected." %}
		{% endif %}
	</div>
{% endblock %}
