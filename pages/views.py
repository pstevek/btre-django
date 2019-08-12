from django.shortcuts import render
from listings.models import Listing
from realtors.models import Realtor
from listings.choices import price_choices, bedroom_choices, state_choices


def index(request):
    listings = Listing.objects.order_by('-list_date').filter(is_published=True)[:3]

    context = {
        'price_choices': price_choices,
        'bedroom_choices': bedroom_choices,
        'state_choices': state_choices,
        'listings': listings,
    }

    return render(request, 'pages/index.html', context)


def about(request):
    realtors = Realtor.objects.order_by('-hire_date')
    mvp_realtor = Realtor.objects.filter(is_mvp=True).first()

    context = {
        'realtors': realtors,
        'mvp_realtor': mvp_realtor,
        'title': 'About BT Real Estate',
        'description': 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Sunt, pariatur!'
    }

    return render(request, 'pages/about.html', context)
