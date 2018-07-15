from django.http import HttpResponse
from django.urls import reverse
from django.views import generic

from .models import Ability, Descriptor, Equipment, Focus, Skill, Type

def index(request):
    return HttpResponse("Hello, world. You're at the cyphercore index.")

class AbilityDetailView(generic.DetailView):
	model = Ability
	template_name = 'cyphercore/ability_detail.html'

class AbilityListView(generic.ListView):
	model = Ability
	template_name = 'cyphercore/ability_list.html'

class DescriptorDetailView(generic.DetailView):
	model = Descriptor
	template_name = 'cyphercore/descriptor_detail.html'

class DescriptorListView(generic.ListView):
	model = Descriptor
	template_name = 'cyphercore/descriptor_list.html'

class EquipmentListView(generic.ListView):
	model = Equipment
	template_name = 'cyphercore/equipment_list.html'

class FocusListView(generic.ListView):
	model = Focus
	template_name = 'cyphercore/focus_list.html'

class FocusDetailView(generic.DetailView):
	model = Focus
	template_name = 'cyphercore/focus_detail.html'

class SkillListView(generic.ListView):
	model = Skill
	template_name = 'cyphercore/skill_list.html'

class TypeListView(generic.ListView):
	model = Type
	template_name = 'cyphercore/type_list.html'

class TypeDetailView(generic.DetailView):
	model = Type
	template_name = 'cyphercore/type_detail.html'
