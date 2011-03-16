from django.conf.urls.defaults import *

urlpatterns = patterns('',
    (r'^$', 'users.views.list'),
    (r'^register/$', 'users.views.register'),
    (r'^connect/$', 'users.views.connect'),
    (r'^disconnect/$', 'users.views.disconnect'),
    (r'^profiles/(?P<name>[^/]+)/$', 'users.views.profile'),

)

