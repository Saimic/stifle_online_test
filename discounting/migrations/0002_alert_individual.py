# Generated by Django 3.2.9 on 2021-12-04 06:04

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('identification', '__first__'),
        ('discounting', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='alert',
            name='individual',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='identification.individual'),
        ),
    ]
