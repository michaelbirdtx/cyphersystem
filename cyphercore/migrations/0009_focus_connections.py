# Generated by Django 2.0.7 on 2018-07-04 21:53

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('cyphercore', '0008_focus'),
    ]

    operations = [
        migrations.AddField(
            model_name='focus',
            name='connections',
            field=models.TextField(blank=True),
        ),
    ]
