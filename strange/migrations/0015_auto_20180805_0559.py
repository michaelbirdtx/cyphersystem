# Generated by Django 2.0.7 on 2018-08-05 05:59

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('strange', '0014_auto_20180805_0559'),
    ]

    operations = [
        migrations.AlterField(
            model_name='cypher',
            name='form',
            field=models.TextField(blank=True),
        ),
    ]