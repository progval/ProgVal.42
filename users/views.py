from django.contrib.auth.models import User
from django.contrib.auth import authenticate, login, logout
from django.http import HttpResponse

from common.templates import render_template

def list(request):
    # TODO: implement
    pass

def register(request):
    if 'username' in request.POST:
        User.objects.create_user(request.POST['username'], request.POST['email'],
                                 request.POST['password'])
        template_name = 'users/success.tpl'
        context = {'mode': 'register'}
    else:
        template_name = 'users/register.tpl'
        context = {}
    return HttpResponse(render_template(template_name, request, context))

def connect(request):
    if 'username' in request.POST:
        user = authenticate(username=request.POST['username'],
                            password=request.POST['password'])
        if user is not None:
            if user.is_active:
                login(request, user)
                template_name = 'users/success.tpl'
                context = {'mode': 'connect'}
            else:
                template_name = 'users/fail.tpl'
                context = {'mode': 'connect', 'why': 'disabled'}
        else:
            template_name = 'users/fail.tpl'
            context = {'mode': 'connect', 'why': 'incorrect'}
    else:
        template_name = 'users/connect.tpl'
        context = {}
    return HttpResponse(render_template(template_name, request, context))

def disconnect(request):
    logout(request)
    template_name = 'users/success.tpl'
    context = {'mode': 'disconnect'}
    return HttpResponse(render_template(template_name, request, context))


def profile(request, username):
    # TODO: implement
    pass
