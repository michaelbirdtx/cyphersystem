# Generated by Django 2.1 on 2018-08-19 02:49

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('strange', '0028_auto_20180819_0232'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='characterskill',
            name='recursion',
        ),
    ]
