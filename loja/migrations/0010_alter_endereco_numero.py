# Generated by Django 5.1.2 on 2024-11-21 18:30

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('loja', '0009_alter_endereco_numero'),
    ]

    operations = [
        migrations.AlterField(
            model_name='endereco',
            name='numero',
            field=models.CharField(blank=True, default='S/N', max_length=200, null=True),
        ),
    ]