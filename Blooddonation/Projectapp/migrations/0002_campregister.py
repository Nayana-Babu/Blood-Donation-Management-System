# Generated by Django 3.2.4 on 2021-07-29 05:55

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Projectapp', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Campregister',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Donorname', models.CharField(max_length=100)),
                ('Bloodgroup', models.CharField(max_length=100)),
                ('Age', models.IntegerField()),
                ('Allergic', models.CharField(max_length=100)),
                ('Medication', models.CharField(max_length=100)),
                ('Donateddate', models.DateField(max_length=100)),
            ],
        ),
    ]
