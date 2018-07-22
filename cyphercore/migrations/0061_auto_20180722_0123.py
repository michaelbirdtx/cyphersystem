# Generated by Django 2.0.7 on 2018-07-22 01:23

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('cyphercore', '0060_auto_20180722_0052'),
    ]

    operations = [
        migrations.CreateModel(
            name='CharacterCypher',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('level', models.IntegerField(default=1)),
                ('appearance', models.TextField()),
                ('character', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='cyphercore.Character')),
                ('cypher', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='cyphercore.Cypher')),
            ],
            options={
                'verbose_name_plural': 'Cyphers',
                'ordering': ['equipment__name'],
            },
        ),
        migrations.AddField(
            model_name='character',
            name='cyphers',
            field=models.ManyToManyField(through='cyphercore.CharacterCypher', to='cyphercore.Cypher'),
        ),
    ]