# Generated by Django 2.0.7 on 2018-07-26 20:47

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('cyphercore', '0073_auto_20180726_2013'),
    ]

    operations = [
        migrations.AlterField(
            model_name='ability',
            name='cost',
            field=models.CharField(blank=True, max_length=20),
        ),
        migrations.AlterField(
            model_name='artifact',
            name='depletion',
            field=models.CharField(blank=True, max_length=20),
        ),
    ]
