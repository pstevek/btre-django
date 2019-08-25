from listings.choices import price_choices, bedroom_choices, state_choices
from django.shortcuts import render, get_object_or_404
from django.core.paginator import Paginator
from .models import Listing


def index(request):
    listings = Listing.objects.order_by('-list_date').filter(is_published=True)
    paginator = Paginator(listings, 6)
    page = request.GET.get('page')
    paged_listings = paginator.get_page(page)
    context = {
        'listings': paged_listings,
        'title': 'Browse Our Properties',
        'description': 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Sunt, pariatur!'
    }

    return render(request, 'listings/listings.html', context)


def listing(request, listing_id):
    listing = get_object_or_404(Listing, pk=listing_id)
    listing_photos = []
    address = listing.city + ' ' + listing.state + ', ' + listing.zipcode
    user = request.user if request.user.is_authenticated else None

    for i in range(1, 7):
        attr = 'photo_' + str(i)
        photo = getattr(listing, attr)
        if photo:
            listing_photos.append(photo)

    context = {
        'listing': listing,
        'listing_photos': listing_photos,
        'title': listing.title,
        'address': address,
        'user_fullname': (user.first_name + ' ' + user.last_name) if user else '',
        'user_email': user.email if user else '',
    }

    return render(request, 'listings/listing.html', context)


def search(request):
    listings_queryset = Listing.objects.order_by('-list_date')

    if 'keywords' in request.GET:
        keywords = request.GET['keywords']
        listings_queryset = listings_queryset.filter(description__icontains=keywords)

    if 'city' in request.GET:
        city = request.GET['city']
        if city:
            listings_queryset = listings_queryset.filter(city__iexact=city)

    if 'state' in request.GET:
        state = request.GET['state']
        if state:
            listings_queryset = listings_queryset.filter(state__iexact=state)

    if 'bedrooms' in request.GET:
        bedrooms = request.GET['bedrooms']
        if bedrooms:
            listings_queryset = listings_queryset.filter(bedrooms__lte=bedrooms)

    if 'price' in request.GET:
        price = request.GET['price']
        if price:
            listings_queryset = listings_queryset.filter(price__lte=price)

    context = {
        'price_choices': price_choices,
        'bedroom_choices': bedroom_choices,
        'state_choices': state_choices,
        'listings': listings_queryset,
        'values': request.GET
    }
    return render(request, 'listings/search.html', context)
