# Generated by Django 2.0.7 on 2018-07-04 04:41

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('cyphercore', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='descriptor',
            name='systems',
            field=models.CharField(default='cypher', max_length=50),
        ),
    ]
