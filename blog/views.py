from django.http import Http404
from django.http import HttpResponse

from common.templates import render_template
from blog.models import Post

def index(request):
    post_list = Post.objects.all().order_by('-publishedDate')[:10]
    return HttpResponse(render_template('blog/index.tpl', request, {'post_list': post_list}))

def fullpost(request, url):
    try:
        post = Post.objects.get(url=url)
    except Post.DoesNotExist:
        raise Http404
    return HttpResponse(render_template('blog/fullpost.tpl', request, {'post': post}))
