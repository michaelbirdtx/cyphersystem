# Generated by Django 2.1.3 on 2019-01-10 18:22

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('strange', '0040_auto_20190110_1816'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='player',
            name='password',
        ),
    ]