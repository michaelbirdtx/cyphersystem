# Generated by Django 2.1.7 on 2019-07-06 03:45

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('cyphercore', '0128_auto_20190706_0026'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='type',
            name='imparts_skills',
        ),
    ]
