# Generated by Django 3.2.4 on 2021-07-28 07:07

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Bank',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Bankname', models.CharField(max_length=100)),
                ('Address', models.CharField(max_length=100)),
                ('Phone', models.CharField(max_length=20)),
                ('Email', models.EmailField(max_length=254)),
                ('Apositive', models.IntegerField()),
                ('Anegative', models.IntegerField()),
                ('Bpositive', models.IntegerField()),
                ('Bnegative', models.IntegerField()),
                ('ABpositive', models.IntegerField()),
                ('ABnegative', models.IntegerField()),
                ('Opositive', models.IntegerField()),
                ('Onegative', models.IntegerField()),
            ],
        ),
        migrations.CreateModel(
            name='Camps',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Campname', models.CharField(max_length=100)),
                ('Venue', models.CharField(max_length=100)),
                ('Photo', models.FileField(upload_to='images')),
                ('CampDate', models.DateField()),
                ('Details', models.CharField(max_length=100)),
            ],
        ),
        migrations.CreateModel(
            name='Contacts',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=40)),
                ('email', models.EmailField(max_length=50)),
                ('mobilenumber', models.CharField(max_length=50)),
                ('message', models.CharField(max_length=200)),
            ],
        ),
        migrations.CreateModel(
            name='Login',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('username', models.CharField(max_length=30)),
                ('password', models.CharField(max_length=30)),
                ('role', models.CharField(max_length=20)),
            ],
        ),
        migrations.CreateModel(
            name='Request',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Name', models.CharField(max_length=100)),
                ('Gender', models.CharField(max_length=10)),
                ('Age', models.IntegerField()),
                ('MobileNumber', models.CharField(max_length=20)),
                ('BloodGroup', models.CharField(max_length=100)),
                ('Email', models.EmailField(max_length=254)),
                ('RequiredDate', models.DateField()),
                ('Details', models.CharField(max_length=100)),
            ],
        ),
        migrations.CreateModel(
            name='Userdb',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Fullname', models.CharField(max_length=100)),
                ('Address', models.CharField(max_length=100)),
                ('Gender', models.CharField(max_length=30)),
                ('Bloodbank', models.CharField(max_length=100)),
                ('Age', models.IntegerField()),
                ('Email', models.EmailField(max_length=254)),
                ('Mobilenumber', models.CharField(max_length=10)),
                ('Bloodgroup', models.CharField(max_length=20)),
                ('Category', models.CharField(max_length=30)),
                ('login', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='Projectapp.login')),
            ],
        ),
    ]