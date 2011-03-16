{% extends "base.tpl" %}
{% load i18n %}
{% load markup %}

{% block title %}{% trans "Post list" %}{% endblock %}

{% block body %}
	<div class="post">
		<h2>{{ post.title }}</h2>
		<p class="head">
			{{ post.head }}
		</p>
		{{ post.content|markdown }}
	</div>
{% endblock %}
