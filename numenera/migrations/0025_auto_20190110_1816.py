# Generated by Django 2.1.3 on 2019-01-10 18:16

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('numenera', '0024_auto_20190109_1825'),
    ]

    operations = [
        migrations.AlterField(
            model_name='player',
            name='first_name',
            field=models.CharField(blank=True, max_length=100),
        ),
        migrations.AlterField(
            model_name='player',
            name='last_name',
            field=models.CharField(blank=True, max_length=100),
        ),
    ]