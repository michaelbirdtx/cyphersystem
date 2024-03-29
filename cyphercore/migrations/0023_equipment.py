# Generated by Django 2.0.7 on 2018-07-07 04:06

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('cyphercore', '0022_auto_20180707_0023'),
    ]

    operations = [
        migrations.CreateModel(
            name='Equipment',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=50)),
                ('base_cost', models.CharField(blank=True, max_length=30)),
                ('description', models.TextField(blank=True)),
            ],
            options={
                'verbose_name_plural': 'Equipment',
                'ordering': ['name'],
            },
        ),
    ]
