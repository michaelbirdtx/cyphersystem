# Generated by Django 2.1 on 2018-08-06 20:10

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('strange', '0019_auto_20180806_0358'),
    ]

    operations = [
        migrations.AlterField(
            model_name='recursion',
            name='abilities',
            field=models.ManyToManyField(blank=True, to='strange.Ability'),
        ),
    ]
