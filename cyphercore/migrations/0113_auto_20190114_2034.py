# Generated by Django 2.1.5 on 2019-01-14 20:34

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('cyphercore', '0112_auto_20190114_1029'),
    ]

    operations = [
        migrations.RenameField(
            model_name='player',
            old_name='access_url',
            new_name='access_token',
        ),
    ]
