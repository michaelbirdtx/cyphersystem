# Generated by Django 2.0.7 on 2018-08-06 03:58

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('cyphercore', '0084_auto_20180806_0340'),
    ]

    operations = [
        migrations.AlterField(
            model_name='equipment',
            name='type',
            field=models.CharField(choices=[('Armor', 'Armor'), ('Armor - Light', 'Armor - Light'), ('Armor - Medium', 'Armor - Medium'), ('Armor - Heavy', 'Armor - Heavy'), ('Weapon', 'Weapon'), ('Weapon - Light', 'Weapon - Light'), ('Weapon - Medium', 'Weapon - Medium'), ('Weapon - Heavy', 'Weapon - Heavy'), ('Other', 'Other'), ('Special', 'Special')], max_length=30),
        ),
    ]
