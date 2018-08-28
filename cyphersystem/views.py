from django.contrib.auth.decorators import login_required
from django.shortcuts import render

BASE_LOGIN_URL = '/admin/login/'

@login_required(login_url=BASE_LOGIN_URL)
def index(request):
    return render(request, 'index.html')
