# Generated by Django 2.1 on 2018-08-20 23:59

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('strange', '0035_auto_20180819_0410'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='attack',
            options={'ordering': ['name'], 'verbose_name': 'Global Attack', 'verbose_name_plural': 'Global Attacks'},
        ),
    ]
