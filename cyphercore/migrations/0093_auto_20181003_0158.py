# Generated by Django 2.1.2 on 2018-10-03 01:58

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('cyphercore', '0092_auto_20180819_0232'),
    ]

    operations = [
        migrations.AlterField(
            model_name='character',
            name='slug',
            field=models.SlugField(max_length=100, unique=True),
        ),
    ]
