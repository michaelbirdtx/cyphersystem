# Generated by Django 2.1.5 on 2019-01-15 03:15

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('cyphercore', '0119_auto_20190115_0310'),
    ]

    operations = [
        migrations.RenameField(
            model_name='player',
            old_name='access_token',
            new_name='slug',
        ),
    ]
