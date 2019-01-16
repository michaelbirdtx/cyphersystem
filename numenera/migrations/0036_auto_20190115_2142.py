# Generated by Django 2.1.5 on 2019-01-15 21:42

from django.db import migrations, models
import uuid


class Migration(migrations.Migration):

    dependencies = [
        ('numenera', '0035_campaign_slug'),
    ]

    operations = [
        migrations.AlterField(
            model_name='character',
            name='slug',
            field=models.SlugField(default=uuid.uuid4),
        ),
    ]