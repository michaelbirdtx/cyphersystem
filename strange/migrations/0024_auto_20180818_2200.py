# Generated by Django 2.1 on 2018-08-18 22:00

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('strange', '0023_auto_20180814_1930'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='character',
            name='abilities',
        ),
        migrations.RemoveField(
            model_name='recursion',
            name='abilities',
        ),
    ]
