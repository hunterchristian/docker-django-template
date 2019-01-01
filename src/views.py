from django.http import HttpResponse
from django.shortcuts import render

def index(request):
    """View function for home page of site."""

    my_var = "This is my python string"
    context = {
        'my_var': my_var,
    }

    return render(request, 'default/index.html', context)
