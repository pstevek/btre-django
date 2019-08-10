from django.shortcuts import render
from listings.choices import price_choices, bedroom_choices, state_choices


def index(request):

    context = {
        'price_choices': price_choices,
        'bedroom_choices': bedroom_choices,
        'state_choices': state_choices
    }

    return render(request, 'pages/index.html', context)


def about(request):
    return render(request, 'pages/about.html')
