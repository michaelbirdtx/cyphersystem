# Generated by Django 2.0.7 on 2018-08-05 06:09

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('strange', '0015_auto_20180805_0559'),
    ]

    operations = [
        migrations.AlterField(
            model_name='character',
            name='portrait_link',
            field=models.URLField(blank=True, max_length=1000),
        ),
    ]
