# Generated by Django 2.0.7 on 2018-07-10 03:24

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('cyphercore', '0039_auto_20180710_0238'),
    ]

    operations = [
        migrations.CreateModel(
            name='Skill',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100)),
                ('skill_type', models.CharField(choices=[('Might', 'Might'), ('Speed', 'Speed'), ('Intellect', 'Intellect')], default='Might', max_length=1)),
            ],
            options={
                'ordering': ['skill_type', 'name'],
            },
        ),
    ]
