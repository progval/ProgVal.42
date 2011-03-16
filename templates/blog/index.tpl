{% extends "base.tpl" %}
{% load i18n %}

{% block title %}{% trans "Post list" %}{% endblock %}

{% block body %}
	<h2>{% trans "Post list" %}</h2>

	{% if post_list %}
		<div class="post_list">
			{% for post in post_list %}
				<div class="post">
					<h3><a href="/blog/{{ post.url }}/">{{ post.title }}</a></h3>
					<p class="head">
						{{ post.head }}
					</p>
				</div>
			{% endfor %}
		</div>
	{% else %}
		<p class="error">
			{% trans "Sorry, no posts for the moment." %}
		</p>
	{% endif %}
{% endblock %}
