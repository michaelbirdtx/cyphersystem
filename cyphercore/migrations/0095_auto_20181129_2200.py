# Generated by Django 2.1.3 on 2018-11-29 22:00

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('cyphercore', '0094_creature'),
    ]

    operations = [
        migrations.AlterField(
            model_name='creature',
            name='movement',
            field=models.TextField(blank=True),
        ),
    ]
