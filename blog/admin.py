from blog.models import Post
from django.contrib import admin

class PostAdmin(admin.ModelAdmin):
    fieldsets = [
        (None,       {'fields': ['title']}),
        ('Blocked',  {'fields': ['url', 'publishedDate'], 'classes': ['collapse']}),
        ('Editable', {'fields': ['lastUpdateDate', 'head', 'content']}),
    ]

admin.site.register(Post, PostAdmin)
