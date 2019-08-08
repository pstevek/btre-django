from django.shortcuts import render
from django.core.paginator import EmptyPage, PageNotAnInteger, Paginator
from .models import Listing


def index(request):
    listings = Listing.objects.order_by('-list_date').filter(is_published=True)
    paginator = Paginator(listings, 3)
    page = request.GET.get('page')
    paged_listings = paginator.get_page(page)
    has_other_pages = paged_listings.has_other_pages()
    has_previous = paged_listings.has_previous()
    has_next = paged_listings.has_next()
    page_range = paged_listings.paginator.page_range
    number = paged_listings.number

    return render(request, 'listings/listings.html', {'listings': paged_listings})


def listing(request, listing_id):
    return render(request, 'listings/listing.html')


def search(request):
    return render(request, 'listings/search.html')
