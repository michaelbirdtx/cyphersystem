# Generated by Django 2.1 on 2018-08-19 03:12

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('strange', '0030_auto_20180819_0254'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='characterskill',
            options={'ordering': ['-skill_level'], 'verbose_name': 'Global Skill', 'verbose_name_plural': 'Global Skills'},
        ),
        migrations.RemoveField(
            model_name='attack',
            name='character',
        ),
    ]