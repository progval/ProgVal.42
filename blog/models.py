from django.db import models

class Post(models.Model):
    title = models.CharField(max_length=2000)
    url = models.CharField(max_length=1000)
    head = models.TextField()
    publishedDate = models.DateTimeField('date published')
    lastUpdateDate = models.DateTimeField('date last update')
    content = models.TextField()
