# Generated by Django 2.0.7 on 2018-07-21 22:46

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('cyphercore', '0057_auto_20180721_2244'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='characterskill',
            options={'ordering': ['-skill_level', 'skill__name'], 'verbose_name_plural': 'Skills'},
        ),
    ]
