# Generated by Django 2.0.7 on 2018-07-26 20:13

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('cyphercore', '0072_auto_20180726_0012'),
    ]

    operations = [
        migrations.AlterField(
            model_name='charactercypher',
            name='appearance',
            field=models.TextField(blank=True),
        ),
    ]
