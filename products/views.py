from django.shortcuts import render

def index(request):
    return render(request, 'index.html')

def listp(request):
    return render(request, 'product-list.html')
