# Generated by Django 2.0.7 on 2018-07-07 06:24

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('cyphercore', '0026_auto_20180707_0623'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='equipment',
            name='genre',
        ),
        migrations.AddField(
            model_name='equipment',
            name='genres',
            field=models.CharField(blank=True, max_length=50),
        ),
    ]
