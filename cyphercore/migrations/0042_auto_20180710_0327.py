# Generated by Django 2.0.7 on 2018-07-10 03:27

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('cyphercore', '0041_auto_20180710_0325'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='skill',
            options={'ordering': ['name']},
        ),
    ]
