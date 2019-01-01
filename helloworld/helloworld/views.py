from django.http import HttpResponse

def index(request):
    return HttpResponse("Hello, ya filthy animals!")
