# Generated by Django 2.0.7 on 2018-08-05 03:39

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('strange', '0008_recursion_armor'),
    ]

    operations = [
        migrations.AlterField(
            model_name='characterskill',
            name='recursion',
            field=models.ForeignKey(blank=True, on_delete=django.db.models.deletion.CASCADE, to='strange.Recursion'),
        ),
    ]
