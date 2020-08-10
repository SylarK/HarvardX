from django.db import models

# Create your models here.

class Artist(models.Model):
    name = models.CharField(max_length=264)
    genre = models.CharField(max_length=50)
    
    def __str__(self):
        return f"{self.name}"

class Album(models.Model):
    title = models.CharField(max_length = 100)
    year = models.IntegerField()
    tracks = models.IntegerField()
    stars = models.IntegerField()
    createdate = models.DateTimeField(auto_now_add = True)
    artist = models.ForeignKey(Artist, on_delete=models.CASCADE)

    def __str__(self):
        return f"{self.title}"

class Music(models.Model):
    title = models.CharField(max_length=248)
    time = models.TimeField
    album = models.ForeignKey(Album, on_delete=models.CASCADE)
    #artist = models.ForeignKey(Artist, on_delete=models.CASCADE)

    def __str__(self):
        return f"Title = {self.title}"
