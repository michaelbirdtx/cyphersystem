# Generated by Django 2.1.7 on 2019-02-21 06:37

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('numenera', '0037_campaign_is_active'),
    ]

    operations = [
        migrations.AlterField(
            model_name='character',
            name='name',
            field=models.CharField(max_length=100),
        ),
    ]
