# Generated by Django 2.0.7 on 2018-08-01 21:06

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('numenera', '0002_auto_20180801_0136'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='nability',
            options={'ordering': ['name'], 'verbose_name': 'Ability', 'verbose_name_plural': 'Abilities'},
        ),
        migrations.AlterModelOptions(
            name='ndescriptor',
            options={'ordering': ['name'], 'verbose_name': 'Descriptor', 'verbose_name_plural': 'Descriptors'},
        ),
        migrations.AlterModelOptions(
            name='nequipment',
            options={'ordering': ['name'], 'verbose_name': 'Equipment', 'verbose_name_plural': 'Equipment'},
        ),
        migrations.AlterModelOptions(
            name='nskill',
            options={'ordering': ['name'], 'verbose_name': 'Skill', 'verbose_name_plural': 'Skills'},
        ),
        migrations.AlterModelOptions(
            name='nsourcebook',
            options={'ordering': ['name'], 'verbose_name': 'Sourcebook', 'verbose_name_plural': 'Sourcebooks'},
        ),
        migrations.AlterField(
            model_name='nability',
            name='sourcebook',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.PROTECT, to='numenera.nSourcebook'),
        ),
    ]
