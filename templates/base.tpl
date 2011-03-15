{% load i18n %}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="fr" >
	<head>
		<title>{% block title %}{% endblock %} - ProgVal</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" href="/static/style.css" />
	</head>
	<body>
		<div id="before-header"></div>
		<div id="header">
			<h1>ProgVal</h1>
			{% trans "Now available on your screens" %}
		</div>
		<ul id="menu">
			<li>
				{% block menu_home %}
					<a href="/">{% trans "Home" %}</a>
				{% endblock %}
			</li>
			<li>
				{% block menu_blog %}
					<a href="/blog/">{% trans "Blog" %}</a></li>
				{% endblock %}
			</li>
		</ul>
		<div id="body">
			{% block body %}
			{% endblock %}
		</div>
		<div id="footer">
			{% trans "Site created by ProgVal" %}
		</div>
	</body>
</html>
