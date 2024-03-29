# Generated by Django 2.0.7 on 2018-07-05 03:19

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('cyphercore', '0015_auto_20180705_0256'),
    ]

    operations = [
        migrations.CreateModel(
            name='FocusAbility',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('tier', models.IntegerField(default=1)),
                ('ability', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='cyphercore.Ability')),
                ('focus', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='cyphercore.Focus')),
            ],
            options={
                'verbose_name_plural': 'FocusAbilities',
                'ordering': ['ability__name'],
            },
        ),
    ]
