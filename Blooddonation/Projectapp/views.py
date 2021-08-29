from django.http import HttpResponse,HttpResponseRedirect
from django.shortcuts import render,redirect
from Projectapp.models import Login,Userdb,Bank,Request,Contacts,Camps,Campregister

#loginapp
def home(request):
    return render(request,'loginapp/home.html')

def camps(request):
    return render(request,'loginapp/camps.html')

def login(request):
    return render(request,'loginapp/login.html')
def blogs(request):
    return render(request, 'loginapp/blogs.html')

def contactus(request):
    if request.method == 'POST':
        name = request.POST.get('name')
        mail = request.POST.get('email')
        mobile = request.POST.get('mobilenumber')
        msg = request.POST.get('message')

        con = Contacts()  # className (tablename)
        con.name = name
        con.email = mail  # email - table column name
        con.mobilenumber = mobile
        con.message = msg
        con.save()  # insert into contacts(name,email,subject,message)values(name,mail,sub,msg)
        return HttpResponse("<script>alert('message sent');window.location ='/project/';</script>")

    return render(request, 'loginapp/contactus.html')


def howtodonate(request):
    return render(request,'loginapp/howtodonate.html')


#ajax
def checkusername(request):

        username = request.GET["id"]
        count = Login.objects.filter(username=username).count()
        if count == 0:
            return HttpResponse("valid username")
        else:
            return HttpResponse('This username already exists.Try another!!')


#donorapp
def donorprofile(request):

        logid = request.session.get('loginid')
        user = Userdb.objects.get(login_id=logid)
        context = {'user1': user}
        return render(request,'donorapp/donorprofile.html', context)
def viewcamps(request):
    allcamp = Camps.objects.all()
    context = {'camp1': allcamp}
    return render(request, 'donorapp/viewcamps.html', context)

def campregister(request):
    if request.method == 'POST':
        obj = Campregister()
        obj.Campname = request.POST.get('campname')
        obj.Donorname = request.POST.get('donorname')
        obj.Bloodgroup = request.POST.get('bloodgroup')
        obj.Age = request.POST.get('age')
        obj.Allergic = request.POST.get('allergy')
        obj.Medication = request.POST.get('med')
        obj.Donateddate = request.POST.get('begin')
        obj.save()
        return HttpResponse(
            "<script>alert('successfully registered.further details will be updated via email !!');window.location='/project/donorprofile';</script>")
    else:
        return render(request, 'donorapp/campregister.html')




def editprofile(request,id):
    if request.method == 'POST':
        up = Userdb.objects.get(id=id)
        up.Fullname = request.POST.get('fullname')
        up.Address = request.POST.get('address')
        up.Gender = request.POST.get('gender')
        up.Bloodbank = request.POST.get('bloodbank')
        up.Age = request.POST.get('age')
        up.Email = request.POST.get('email')
        up.Mobilenumber = request.POST.get('mobilenumber')
        up.Bloodgroup = request.POST.get('bloodgroup')

        up.save()
        return HttpResponse(
            "<script>alert('successfully updated..!!');window.location='/project/donorprofile';</script>")
    else:
        detail = Userdb.objects.get(id=id)
        return render(request, 'donorapp/editprofile.html', {'detail1': detail})



from django.contrib.auth import logout
def logout1(request):
    logout(request)
    return HttpResponse("<script>alert('you are successfully Logout!! please login again..');window.location ='login';</script>")

#patientapp

def patientprofile(request):
    logid = request.session.get('loginid')
    pt = Userdb.objects.get(login_id=logid)
    context = {'pt1': pt}
    return render(request, 'patientapp/patientprofile.html', context)

def search(request):
    return render(request,'patientapp/search.html')

def sendrequest(request):#pulling data from one webpage to another

    return render(request, 'patientapp/sendrequest.html')

def viewmessage(request):
    return render(request,'patientapp/viewmessage.html')

from django.contrib.auth import logout
def patientlogout(request):
    logout(request)
    return HttpResponse("<script>alert('you are successfully Logout!! please login again..');window.location ='login';</script>")

#bankapp
def bankhome(request):
    return render(request,'bankapp/bankhome.html')

from django.contrib.auth import logout
def banklogout(request):
    logout(request)
    return HttpResponse("<script>alert('you are successfully Logout!! please login again..');window.location ='login';</script>")

def stockdetails(request):
    stocks = Bank.objects.all()
    context = {'stocks1': stocks}
    return render(request,'bankapp/stockdetails.html',context)

def bankcamp(request):
    return render(request,'bankapp/bankcamp.html')

def banksendrequest(request):
    return render(request,'bankapp/banksendrequest.html')



#adminapp
def messagedetails(request):
    allmsg = Campregister.objects.all()
    context = {'messages': allmsg}
    return render(request, 'adminapp/messagedetails.html', context)

def requestdetails(request):
    allreq = Request.objects.all()
    context = {'all1': allreq}
    return render(request, 'adminapp/requestdetails.html',context)

def bankdetails(request):
    allbank = Bank.objects.all()
    context = {'bank1': allbank}
    return render(request, 'adminapp/bankdetails.html',context)

def adminprofile(request):
    logid = request.session.get('loginid')
    admin = Userdb.objects.get(login_id=logid)
    context = {'admin1': admin}

    return render(request,'adminapp/adminprofile.html', context)
def adminhome(request):
    return render(request, 'adminapp/adminhome.html')

def editrequest(request,id):
    if request.method == 'POST':
        r = Request.objects.get(id=id)
        r.Name = request.POST.get('name')
        r.Gender = request.POST.get('gender')
        r.Age = request.POST.get('age')
        r.MobileNumber = request.POST.get('mobilenumber')
        r.BloodGroup = request.POST.get('bloodgroup')
        r.Email = request.POST.get('email')
        r.RequiredDate = request.POST.get('begin')
        r.Details = request.POST.get('details')
        r.save()
        return HttpResponse("<script>alert('successfully updated..!!');window.location='/project/requestdetails';</script>")
    else:
        detail = Request.objects.get(id=id)
        return render(request, 'adminapp/editrequest.html', {'detail1': detail})

def editcamp(request,id):
    if request.method == 'POST':
        camp = Camps.objects.get(id=id)
        camp.Campname = request.POST.get('campname')
        camp.Venue = request.POST.get('venue')
        camp.Photo = request.POST.get('photo')
        camp.CampDate = request.POST.get('campdate')
        camp.Details = request.POST.get('details')
        camp.save()
        return HttpResponse("<script>alert('successfully updated..!!');window.location='/project/campdetails';</script>")
    else:
        detail = Camps.objects.get(id=id)
        return render(request, 'adminapp/editcamp.html', {'detail1': detail})
        #return HttpResponse(id)


def editbank(request,id):
    if request.method == 'POST':
        bank = Bank.objects.get(id=id)
        bank.Bankname = request.POST.get('bankname')
        bank.Address = request.POST.get('address')
        bank.Phone = request.POST.get('phone')
        bank.Email = request.POST.get('email')
        bank.Apositive = request.POST.get('apos')
        bank.Anegative = request.POST.get('aneg')
        bank.Bpositive = request.POST.get('bpos')
        bank.Bnegative = request.POST.get('bneg')
        bank.ABpositive = request.POST.get('abpos')
        bank.ABnegative = request.POST.get('abneg')
        bank.Opositive = request.POST.get('opos')
        bank.Onegative = request.POST.get('oneg')
        bank.save()
        return HttpResponse("<script>alert('successfully updated..!!');window.location='/project/bankdetails';</script>")
    else:
        detail = Bank.objects.get(id=id)
        return render(request, 'adminapp/editbank.html', {'detail1': detail})


def adminupdate(request,id):
    if request.method == 'POST':
        up = Userdb.objects.get(id=id)
        up.Fullname = request.POST.get('fullname')
        up.Address = request.POST.get('address')
        up.Gender = request.POST.get('gender')
        up.Bloodbank = request.POST.get('bloodbank')
        up.Age = request.POST.get('age')
        up.Email = request.POST.get('email')
        up.Mobilenumber = request.POST.get('mobilenumber')
        up.Bloodgroup = request.POST.get('bloodgroup')
        up.Category = request.POST.get('category')
        up.save()
        return HttpResponse("<script>alert('successfully updated..!!');window.location='/project/adminprofile';</script>")
    else:
        detail = Userdb.objects.get(id=id)
        return render(request, 'adminapp/editadmin.html', {'detail1': detail})

def edituser(request,id):
    if request.method == 'POST':  # update takes here when form action=post.so first else condition works,it fetch existing
        fname = request.POST.get('fullname')  # details of particular user with dat user id and load to html page.now
        addr = request.POST.get('address')  # that details will update in 'if' condition.
        gen = request.POST.get('gender')
        bank = request.POST.get('bloodbank')
        ag = request.POST.get('age')
        mail = request.POST.get('email')
        mobile = request.POST.get('mobilenumber')
        group = request.POST.get('bloodgroup')
        cat = request.POST.get('category')

        userobj = Userdb.objects.get(id=id)
        userobj.Fullname = fname
        userobj.Address = addr
        userobj.Gender = gen
        userobj.Bloodbank = bank
        userobj.Age = ag
        userobj.Email = mail
        userobj.Mobilenumber = mobile
        userobj.Bloodgroup = group
        userobj.Category = cat
        userobj.save()
        return redirect("userdetails")

    else:
        detail = Userdb.objects.get(id=id)
        return render(request, 'adminapp/useredit.html', {'detail1': detail})




def userdetails(request):
    alluser = Userdb.objects.all()
    context = {'user1': alluser}
    return render(request,'adminapp/userdetails.html', context)

from django.contrib.auth import logout
def adminlogout(request):
    logout(request)
    return HttpResponse("<script>alert('you are successfully Logout!! please login again..');window.location ='login';</script>")

def campdetails(request):
    allcamp = Camps.objects.all()
    context = {'camp1': allcamp}
    return render(request,'adminapp/campdetails.html', context)

#internal functions

def userregister(request):
    if request.method == 'POST':
        login = Login()
        uname = request.POST.get('username')
        pas = request.POST.get('password')
        type = request.POST.get('category')

        login.username = uname
        login.password = pas
        login.role = type
        login.save()

        userobj = Userdb()
        fname = request.POST.get('fullname')
        addr = request.POST.get('address')
        gen = request.POST.get('gender')
        bank = request.POST.get('bloodbank')
        age1 = request.POST.get('age')
        mail = request.POST.get('email')
        mobile = request.POST.get('mobilenumber')
        bgroup = request.POST.get('bloodgroup')
        cat = request.POST.get('category')

        userobj.Fullname = fname
        userobj.Address = addr
        userobj.Gender = gen
        userobj.Bloodbank = bank
        userobj.Age = age1
        userobj.Email = mail
        userobj.Mobilenumber = mobile
        userobj.Bloodgroup = bgroup
        userobj.Category = cat
        userobj.login = login
        userobj.save()
        return HttpResponse("<script>alert('successfully registered..welcome now you can login here !!');window.location='login';</script>")
    else:
        return render(request, 'loginapp/userregistration.html')
def bankregister(request):
    if request.method == 'POST':
        bankobj = Bank()
        bname = request.POST.get('bankname')
        addr = request.POST.get('address')
        ph = request.POST.get('phone')
        mail = request.POST.get('email')
        apos = request.POST.get('a+')
        aneg = request.POST.get('a-')
        bpos = request.POST.get('b+')
        bneg = request.POST.get('b-')
        abpos = request.POST.get('ab+')
        abneg = request.POST.get('ab-')
        opos = request.POST.get('o+')
        oneg = request.POST.get('o-')

        bankobj.Bankname = bname
        bankobj.Address = addr
        bankobj.Phone = ph
        bankobj.Email = mail
        bankobj.Apositive = apos
        bankobj.Anegative = aneg
        bankobj.Bpositive = bpos
        bankobj.Bnegative = bneg
        bankobj.ABpositive = abpos
        bankobj.ABnegative = abneg
        bankobj.Opositive = opos
        bankobj.Onegative = oneg
        bankobj.save()
        return HttpResponse("<script>alert('successfully registered.. !!');window.location='login';</script>")
    else:
        return render(request, 'loginapp/bankregistration.html')

def loginprocess(request):
    if request.method == 'POST':
        username = request.POST.get('username')
        password = request.POST.get('password')

        if Login.objects.filter(username=username, password=password).exists():
            obj = Login.objects.get(username=username, password=password)
            request.session['loginid'] = obj.id
            request.session['uname'] = obj.username
            role = obj.role
            if (role == "donor"):
                #return render(request, 'loginregapp/adminhome.html')
                return redirect("donorprofile")

            elif (role == "patient"):
                #return render(request, 'loginregapp/userhome.html')
                return redirect("patientprofile")
            elif (role == "admin"):
                return redirect("adminhome")

            else:
                return HttpResponse("<script>alert('login failed..try again');window.location='/project/login';</script>")
    return redirect("loginpage")

def donorsearch(request,bg):
    alluser = Userdb.objects.filter(Category="donor",Bloodgroup=bg)
    context = {'user1': alluser}
    return render(request, 'patientapp/donorsearch.html', context)

def viewrequest(request,bg1):

    alluser = Request.objects.filter(BloodGroup=bg1)
    context = {'user2': alluser}
    return render(request, 'donorapp/viewrequest.html', context)

def banksearch(request):
    allbank = Bank.objects.all()
    context = {'bank1': allbank}
    return render(request, 'patientapp/banksearch.html', context)

def send(request):
    obj = Request()
    nm = request.POST.get('name')
    gen = request.POST.get('gender')
    ag = request.POST.get('age')
    mobile = request.POST.get('mobilenumber')
    group = request.POST.get('bloodgroup')
    mail = request.POST.get('email')
    dt = request.POST.get('begin')
    de = request.POST.get('details')

    obj.Name = nm
    obj.Gender = gen
    obj.Age = ag
    obj.MobileNumber = mobile
    obj.BloodGroup = group
    obj.Email = mail
    obj.RequiredDate = dt
    obj.Details = de
    obj.save()
    return HttpResponse("<script>alert('Request send.The donor will contact you soon!!');window.location='patientprofile';</script>")

def delete(request,id):
    logdel = Login.objects.get(id=id)
    userdel = Userdb.objects.get(login_id=id)
    logdel.delete()
    userdel.delete()
    return HttpResponse("<script>alert('successfully deleted,Please register to use account again.Thank you !!');window.location='/project/userdetails';</script>")


def bankdelete(request,id):
    bankdel = Bank.objects.get(id=id)
    bankdel.delete()
    return HttpResponse("<script>alert('successfully deleted,Please register to use account again.Thank you !!');window.location='/project/bankdetails';</script>")


def requestdelete(request,id):
    requestdel = Request.objects.get(id=id)
    requestdel.delete()
    return HttpResponse("<script>alert('successfully deleted,Please register to use account again.Thank you !!');window.location='/project/requestdetails';</script>")
def campdelete(request,id):
    campdel = Camps.objects.get(id=id)
    campdel.delete()
    return HttpResponse("<script>alert('successfully deleted,Please register to use account again.Thank you !!');window.location='/project/campdetails';</script>")


def addcamp(request):
    return render(request, 'adminapp/addcamp.html')

def uploadprocess(request):
    imgup = Camps()
    name = request.POST.get("campname")
    venue = request.POST.get('venue')
    photo1 = request.FILES.get("photo")
    date = request.POST.get("begin")
    details = request.POST.get("details")
    imgup.Campname = name
    imgup.Venue = venue
    imgup.Photo = photo1
    imgup.CampDate = date
    imgup.Details = details
    imgup.save()
    return HttpResponse("<script>alert('successfully uploaded..');window.location ='/project/addcamp';</script>")




















