from django.urls import path
from . import views

urlpatterns = [
    #Loginapp
    path('', views.home, name='home'),
    path('camps', views.camps, name='camps'),
    path('login', views.login, name='login'),
    path('contactus', views.contactus, name='contactus'),
    path('howtodonate', views.howtodonate, name='howtodonate'),
    path('blogs', views.blogs, name='blogs'),

    #ajax
    path('checkusername', views.checkusername, name='checkusername'),

    #donorapp
    path('donorprofile', views.donorprofile, name='donorprofile'),
    path('editprofile/<int:id>', views.editprofile, name='editprofile'),
    path('viewrequest/<str:bg1>',views.viewrequest, name='viewrequest'),
    path('viewcamps',views.viewcamps,name='viewcamps'),
    path('campregister', views.campregister, name='campregister'),
    path('logout1', views.logout1, name='logout1'),

    #patientapp
    path('patientprofile', views.patientprofile,name='patientprofile'),
    path('search', views.search, name='search'),
    path('sendrequest', views.sendrequest, name='sendrequest'),
    path('viewmessage', views.viewmessage, name='viewmessage'),
    path('patientlogout', views.patientlogout, name='patientlogout'),
    path('donorsearch/<str:bg>', views.donorsearch, name='donorsearch'),
    path('banksearch', views.banksearch,name='banksearch'),
    path('send',views.send,name='send'),

    #bankapp
    path('bankhome', views.bankhome, name='bankhome'),
    path('banklogout', views.banklogout, name='banklogout'),
    path('stockdetails', views.stockdetails, name='stockdetails'),
    path('bankcamp', views.bankcamp, name='bankcamp'),
    path('banksendrequest', views.banksendrequest, name='banksendrequest'),

    #adminapp
    path('adminhome', views.adminhome, name='adminhome'),
    path('adminprofile', views.adminprofile, name='adminprofile'),
    path('userdetails', views.userdetails, name='userdetails'),
    path('adminlogout', views.adminlogout, name='adminlogout'),
    path('campdetails', views.campdetails, name='campdetails'),
    path('adminupdate/<int:id>', views.adminupdate,name='adminupdate'),
    path('edituser/<int:id>',views.edituser,name='edituser'),
    path('bankdetails', views.bankdetails,name='bankdetails'),
    path('editbank/<int:id>', views.editbank,name='editbank'),
    path('bankdelete/<int:id>', views.bankdelete,name='bankdelete'),
    path('requestdetails', views.requestdetails,name='requestdetails'),
    path('editrequest/<int:id>', views.editrequest,name='editrequest'),
    path('requestdelete/<int:id>', views.requestdelete,name='requestdelete'),
    path('editcamp/<int:id>', views.editcamp,name='editcamp'),
    path('campdelete/<int:id>', views.campdelete,name='campdelete'),
    path('messagedetails', views.messagedetails, name='messagedetails'),

    #internal urls
    path('userregister', views.userregister, name='userregister'),
    path('bankregister', views.bankregister, name='bankregister'),
    path('loginprocess', views.loginprocess, name='loginprocess'),
    path('delete/<int:id>', views.delete, name='delete'),

    #imageupload
    path('addcamp', views.addcamp, name='addcamp'),
    path('uploadprocess', views.uploadprocess,name='uploadprocess'),

]