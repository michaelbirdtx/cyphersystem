# Generated by Django 2.0.7 on 2018-08-05 05:43

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('strange', '0012_auto_20180805_0345'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='attack',
            options={'ordering': ['recursion__name', 'name']},
        ),
        migrations.AlterModelOptions(
            name='characterartifact',
            options={'ordering': ['recursion__name', 'artifact__name']},
        ),
        migrations.AlterModelOptions(
            name='characterequipment',
            options={'ordering': ['recursion__name', 'equipment__name']},
        ),
        migrations.AlterModelOptions(
            name='characterskill',
            options={'ordering': ['recursion__name', '-skill_level']},
        ),
        migrations.RemoveField(
            model_name='recursion',
            name='artifacts',
        ),
        migrations.RemoveField(
            model_name='recursion',
            name='equipment',
        ),
        migrations.RemoveField(
            model_name='recursion',
            name='skills',
        ),
    ]
