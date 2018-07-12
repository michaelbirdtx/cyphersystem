from django.http import HttpResponse
from django.urls import reverse
from django.views import generic

from .models import Ability, Focus, Type

def index(request):
    return HttpResponse("Hello, world. You're at the cyphercore index.")

class AbilityDetailView(generic.DetailView):
	model = Ability
	template_name = 'cyphercore/ability_detail.html'

class AbilityListView(generic.ListView):
	model = Ability
	template_name = 'cyphercore/ability_list.html'

class FocusDetailView(generic.DetailView):
	model = Focus
	template_name = 'cyphercore/focus_detail.html'

class TypeDetailView(generic.DetailView):
	model = Type
	template_name = 'cyphercore/type_detail.html'
