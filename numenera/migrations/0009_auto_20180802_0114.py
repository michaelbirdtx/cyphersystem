# Generated by Django 2.0.7 on 2018-08-02 01:14

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('numenera', '0008_auto_20180802_0107'),
    ]

    operations = [
        migrations.CreateModel(
            name='Attack',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=50)),
                ('modifier', models.IntegerField(default=0)),
                ('damage', models.IntegerField(default=0)),
            ],
            options={
                'verbose_name': 'Attack',
                'verbose_name_plural': 'Attacks',
                'ordering': ['name'],
                'abstract': False,
            },
        ),
        migrations.CreateModel(
            name='Character',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100, unique=True)),
                ('portrait_link', models.URLField(blank=True)),
                ('background', models.TextField(blank=True)),
                ('notes', models.TextField(blank=True)),
                ('tier', models.IntegerField(default=1)),
                ('effort', models.IntegerField(default=1)),
                ('cypher_limit', models.IntegerField(default=2)),
                ('money', models.IntegerField(default=0)),
                ('xp', models.IntegerField(default=0)),
                ('might_current', models.IntegerField(default=10)),
                ('might_pool', models.IntegerField(default=10)),
                ('might_edge', models.IntegerField(default=0)),
                ('speed_current', models.IntegerField(default=10)),
                ('speed_pool', models.IntegerField(default=10)),
                ('speed_edge', models.IntegerField(default=0)),
                ('intellect_current', models.IntegerField(default=10)),
                ('intellect_pool', models.IntegerField(default=10)),
                ('intellect_edge', models.IntegerField(default=0)),
                ('armor', models.IntegerField(default=0)),
                ('recovery_roll', models.IntegerField(default=1, verbose_name='Recovery roll 1d6+')),
                ('impaired', models.BooleanField(default=False)),
                ('debilitated', models.BooleanField(default=False)),
                ('one_action', models.BooleanField(default=False)),
                ('ten_minutes', models.BooleanField(default=False)),
                ('one_hour', models.BooleanField(default=False)),
                ('ten_hours', models.BooleanField(default=False)),
                ('slug', models.SlugField(max_length=100)),
                ('abilities', models.ManyToManyField(to='numenera.Ability')),
            ],
            options={
                'verbose_name': 'Character',
                'verbose_name_plural': 'Characters',
                'ordering': ['name'],
                'abstract': False,
            },
        ),
        migrations.CreateModel(
            name='CharacterArtifact',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('level', models.IntegerField(default=1)),
                ('artifact', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='numenera.Artifact')),
                ('character', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='numenera.Character')),
            ],
            options={
                'verbose_name': 'Artifact',
                'verbose_name_plural': 'Artifacts',
                'ordering': ['artifact__name'],
                'abstract': False,
            },
        ),
        migrations.CreateModel(
            name='CharacterCypher',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('level', models.IntegerField(default=1)),
                ('appearance', models.TextField(blank=True)),
                ('character', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='numenera.Character')),
                ('cypher', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='numenera.Cypher')),
            ],
            options={
                'verbose_name': 'Cypher',
                'verbose_name_plural': 'Cyphers',
                'ordering': ['cypher__name'],
                'abstract': False,
            },
        ),
        migrations.CreateModel(
            name='CharacterEquipment',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('cost', models.CharField(blank=True, max_length=20)),
                ('quantity', models.IntegerField(default=1)),
                ('character', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='numenera.Character')),
                ('equipment', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='numenera.Equipment')),
            ],
            options={
                'verbose_name': 'Equipment',
                'verbose_name_plural': 'Equipment',
                'ordering': ['equipment__name'],
                'abstract': False,
            },
        ),
        migrations.CreateModel(
            name='CharacterSkill',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('skill_level', models.CharField(choices=[('T', 'Trained'), ('S', 'Specialized'), ('I', 'Inability')], default='T', max_length=1)),
                ('character', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='numenera.Character')),
                ('skill', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='numenera.Skill')),
            ],
            options={
                'verbose_name': 'Skill',
                'verbose_name_plural': 'Skills',
                'ordering': ['-skill_level', 'skill__name'],
                'abstract': False,
            },
        ),
        migrations.AddField(
            model_name='character',
            name='artifacts',
            field=models.ManyToManyField(through='numenera.CharacterArtifact', to='numenera.Artifact'),
        ),
        migrations.AddField(
            model_name='character',
            name='cyphers',
            field=models.ManyToManyField(through='numenera.CharacterCypher', to='numenera.Cypher'),
        ),
        migrations.AddField(
            model_name='character',
            name='descriptor',
            field=models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='numenera.Descriptor'),
        ),
        migrations.AddField(
            model_name='character',
            name='equipment',
            field=models.ManyToManyField(through='numenera.CharacterEquipment', to='numenera.Equipment'),
        ),
        migrations.AddField(
            model_name='character',
            name='focus',
            field=models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='numenera.Focus'),
        ),
        migrations.AddField(
            model_name='character',
            name='skills',
            field=models.ManyToManyField(through='numenera.CharacterSkill', to='numenera.Skill'),
        ),
        migrations.AddField(
            model_name='character',
            name='type',
            field=models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='numenera.Type'),
        ),
        migrations.AddField(
            model_name='attack',
            name='character',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='numenera.Character'),
        ),
    ]
