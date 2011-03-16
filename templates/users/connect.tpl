{% extends "base.tpl" %}
{% load i18n %}

{% block title %}Connection{% endblock %}

{% block body %}
	<h2>Registration</h2>
	<form action="." method="post">
		{% csrf_token %}
		<table>
			<tr class="username">
				<td class="label">
					<label for="username">
						{% trans "User name" %}
					</label>
					{% trans "The name used to identify you on the website." %}
				</td>
				<td class="field">
					<input type="text" name="username" id="username" />
				</td>
			</tr>
			<tr class="password">
				<td class="label">
					<label for="password">
						{% trans "Password" %}
					</label>
				</td>
				<td class="field">
					<input type="password" name="password" id="password" />
				</td>
			</tr>
			<tr class="button">
				<td rowspan="2">
					<input type="submit" value="{% trans "Connect" %}" />
				</td>
			</tr>
		</table>
	</form>
{% endblock %}
