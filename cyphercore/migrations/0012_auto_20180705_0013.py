# Generated by Django 2.0.7 on 2018-07-05 00:13

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('cyphercore', '0011_auto_20180704_2205'),
    ]

    operations = [
        migrations.AlterField(
            model_name='descriptor',
            name='name',
            field=models.CharField(max_length=50, unique=True, verbose_name='descriptor name'),
        ),
        migrations.AlterField(
            model_name='focus',
            name='name',
            field=models.CharField(max_length=50, unique=True),
        ),
        migrations.AlterField(
            model_name='type',
            name='name',
            field=models.CharField(max_length=20, unique=True, verbose_name='type name'),
        ),
    ]
