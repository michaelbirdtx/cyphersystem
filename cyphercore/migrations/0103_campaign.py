# Generated by Django 2.1.3 on 2019-01-08 23:24

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('cyphercore', '0102_player_password'),
    ]

    operations = [
        migrations.CreateModel(
            name='Campaign',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100)),
                ('description', models.TextField(blank=True)),
                ('gm', models.ForeignKey(null=True, on_delete=django.db.models.deletion.PROTECT, to='cyphercore.Player')),
            ],
            options={
                'verbose_name_plural': 'Campaigns',
                'verbose_name': 'Campaign',
                'abstract': False,
                'ordering': ['name'],
            },
        ),
    ]
