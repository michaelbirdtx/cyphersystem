# Generated by Django 2.1.5 on 2019-01-14 10:29

from django.db import migrations, models
import uuid


class Migration(migrations.Migration):

    dependencies = [
        ('cyphercore', '0111_player_access_url'),
    ]

    operations = [
        migrations.AlterField(
            model_name='player',
            name='access_url',
            field=models.UUIDField(default=uuid.uuid4),
        ),
    ]
