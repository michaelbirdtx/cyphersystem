# Generated by Django 2.1 on 2018-08-18 21:52

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('numenera', '0019_remove_character_abilities'),
    ]

    operations = [
        migrations.CreateModel(
            name='CharacterAbility',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('note', models.TextField(blank=True)),
                ('ability', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='numenera.Ability')),
                ('character', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='numenera.Character')),
            ],
            options={
                'verbose_name': 'Ability',
                'verbose_name_plural': 'Abilities',
                'ordering': ['ability__name'],
                'abstract': False,
            },
        ),
        migrations.AddField(
            model_name='character',
            name='abilities',
            field=models.ManyToManyField(through='numenera.CharacterAbility', to='numenera.Ability'),
        ),
    ]
