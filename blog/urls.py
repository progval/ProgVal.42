from django.conf.urls.defaults import *

urlpatterns = patterns('',
    (r'^$', 'blog.views.index'),
    (r'^(?P<url>[^/]+)/$', 'blog.views.fullpost'),

)
