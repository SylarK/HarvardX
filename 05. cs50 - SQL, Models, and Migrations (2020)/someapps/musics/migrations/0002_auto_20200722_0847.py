# Generated by Django 3.0.8 on 2020-07-22 11:47

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('musics', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='album',
            name='stars',
            field=models.IntegerField(),
        ),
        migrations.AlterField(
            model_name='album',
            name='tracks',
            field=models.IntegerField(),
        ),
        migrations.AlterField(
            model_name='album',
            name='year',
            field=models.IntegerField(),
        ),
    ]
