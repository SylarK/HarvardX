from django.contrib import admin

from .models import Artist, Album, Music

# Register your models here.

class ArtistAdmin(admin.ModelAdmin):
    list_display = ('name', 'genre')
    filter_horizontal = ('name')

class AlbumAdmin(admin.ModelAdmin):
    list_display = ('title', 'artist')

class MusicAdmin(admin.ModelAdmin):
    list_display = ('id', 'title', 'album')         
    


admin.site.register(Artist)
admin.site.register(Album)
admin.site.register(Music, MusicAdmin)


