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

    for i in range(1, 7):
        attr = 'photo_' + str(i)
        photo = getattr(listing, attr)
        if photo:
            listing_photos.append(photo)

    context = {
        'listing': listing,
        'listing_photos': listing_photos,
        'title': listing.title,
        'address': address
    }

    return render(request, 'listings/listing.html', context)


def search(request):
    return render(request, 'listings/search.html')
