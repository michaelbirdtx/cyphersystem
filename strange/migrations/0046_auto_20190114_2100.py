# Generated by Django 2.1.5 on 2019-01-14 21:00

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('strange', '0045_auto_20190114_2049'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='player',
            options={'ordering': ['name'], 'verbose_name': 'Player', 'verbose_name_plural': 'Players'},
        ),
        migrations.RenameField(
            model_name='player',
            old_name='display_name',
            new_name='name',
        ),
        migrations.RemoveField(
            model_name='player',
            name='first_name',
        ),
        migrations.RemoveField(
            model_name='player',
            name='last_name',
        ),
    ]
