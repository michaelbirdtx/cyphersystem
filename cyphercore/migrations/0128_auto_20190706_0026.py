# Generated by Django 2.1.7 on 2019-07-06 00:26

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('cyphercore', '0127_auto_20190706_0020'),
    ]

    operations = [
        migrations.AlterField(
            model_name='ability',
            name='imparts_skills',
            field=models.ManyToManyField(blank=True, to='cyphercore.Skill'),
        ),
    ]
