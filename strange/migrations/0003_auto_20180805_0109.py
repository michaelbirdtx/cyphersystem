# Generated by Django 2.0.7 on 2018-08-05 01:09

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('strange', '0002_auto_20180805_0105'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='characterequipment',
            name='character',
        ),
        migrations.RemoveField(
            model_name='characterequipment',
            name='equipment',
        ),
        migrations.DeleteModel(
            name='CharacterEquipment',
        ),
    ]
