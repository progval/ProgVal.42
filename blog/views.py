from django.http import Http404
from django.http import HttpResponse
from django.template import Context, loader

from blog.models import Post

def index(request):
    postList = Post.objects.all().order_by('-publishedDate')[:10]
    template = loader.get_template('blog/index.tpl')
    context = Context({'post_list': postList})
    return HttpResponse(template.render(context))

def fullpost(request, url):
    try:
        post = Post.objects.get(url=url)
    except Post.DoesNotExist:
        raise Http404
    template = loader.get_template('blog/fullpost.tpl')
    context = Context({'post': post})
    return HttpResponse(template.render(context))
