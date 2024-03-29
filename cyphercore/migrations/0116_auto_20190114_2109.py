# Generated by Django 2.1.5 on 2019-01-14 21:09

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('cyphercore', '0115_auto_20190114_2100'),
    ]

    operations = [
        migrations.AlterField(
            model_name='character',
            name='campaign',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='cyphercore.Campaign'),
        ),
        migrations.AlterField(
            model_name='character',
            name='player',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='cyphercore.Player'),
        ),
    ]
