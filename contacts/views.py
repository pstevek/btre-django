from django.core.exceptions import ObjectDoesNotExist
from django.core.mail import send_mail
from django.conf import settings
from django.contrib.auth.models import User
from django.shortcuts import redirect
from django.views.decorators.http import require_POST
from django.contrib import messages
from listings.models import Listing
from .models import Contact


@require_POST
def make_inquiry(request):
    user_id = request.user.id if request.user.is_authenticated else None
    listing_id = request.POST['listing_id']
    user = listing = None
    try:
        listing = Listing.objects.get(id=listing_id)
        user = User.objects.get(id=user_id) if user_id is not None else None
    except ObjectDoesNotExist:
        messages.error(request, 'Your request could not be processed at this time')
        redirect('index')

    inquiry_exists = Contact.objects.all().filter(user=user, listing=listing)
    if inquiry_exists:
        messages.error(request, "You've already made an inquiry about this listing.")
        redirect('index')

    name = request.POST['name']
    email = request.POST['email']
    phone = request.POST['phone']
    message = request.POST['message']

    contact = Contact(listing=listing, user=user, name=name, email=email, phone=phone, message=message)
    contact.save()

    # TODO: Implement django sendmail using G-mail
    mail_title = 'Property Listing Inquiry'
    mail_body = 'There has been an inquiry for ' + listing.title + '. Sign into admin panel for more info.'

    send_mail(
        mail_title,
        mail_body,
        settings.EMAIL_HOST_USER,
        [email],
        fail_silently=False
    )

    messages.success(request, 'Your request has been submitted, you will be contact shortly !')

    return redirect('/listings/' + listing_id)
