from django.db import models

class Login(models.Model):
    username = models.CharField(max_length=30)
    password = models.CharField(max_length=30)
    role = models.CharField(max_length=20)

class Userdb(models.Model):
    Fullname = models.CharField(max_length=100)
    Address = models.CharField(max_length=100)
    Gender = models.CharField(max_length=30)
    Bloodbank = models.CharField(max_length=100)
    Age = models.IntegerField()
    Email = models.EmailField()
    Mobilenumber = models.CharField(max_length=10)
    Bloodgroup = models.CharField(max_length=20)
    Category = models.CharField(max_length=30)
    login = models.ForeignKey(Login, on_delete=models.CASCADE)

class Bank(models.Model):
    Bankname = models.CharField(max_length=100)
    Address = models.CharField(max_length=100)
    Phone = models.CharField(max_length=20)
    Email = models.EmailField()
    Apositive = models.IntegerField()
    Anegative = models.IntegerField()
    Bpositive = models.IntegerField()
    Bnegative = models.IntegerField()
    ABpositive = models.IntegerField()
    ABnegative = models.IntegerField()
    Opositive = models.IntegerField()
    Onegative = models.IntegerField()

class Request(models.Model):
    Name = models.CharField(max_length=100)
    Gender = models.CharField(max_length=10)
    Age = models.IntegerField()
    MobileNumber = models.CharField(max_length=20)
    BloodGroup = models.CharField(max_length=100)
    Email = models.EmailField()
    RequiredDate = models.DateField()
    Details = models.CharField(max_length=100)
class Contacts(models.Model):
    name = models.CharField(max_length=40)
    email = models.EmailField(max_length=50)
    mobilenumber = models.CharField(max_length=50)
    message = models.CharField(max_length=200)

class Camps(models.Model):
    Campname = models.CharField(max_length=100)
    Venue = models.CharField(max_length=100)
    Photo = models.FileField(upload_to='images')
    CampDate = models.DateField()
    Details = models.CharField(max_length=100)
class Campregister(models.Model):
    Campname = models.CharField(max_length=100)
    Donorname = models.CharField(max_length=100)
    Bloodgroup = models.CharField(max_length=100)
    Age = models.IntegerField()
    Allergic = models.CharField(max_length=100)
    Medication = models.CharField(max_length=100)
    Donateddate = models.DateField(max_length=100)





