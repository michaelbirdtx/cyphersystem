# Generated by Django 2.1.5 on 2019-01-15 03:10

from django.db import migrations, models
import uuid


class Migration(migrations.Migration):

    dependencies = [
        ('strange', '0047_player_is_active'),
    ]

    operations = [
        migrations.AlterField(
            model_name='player',
            name='access_token',
            field=models.SlugField(default=uuid.uuid4),
        ),
    ]
