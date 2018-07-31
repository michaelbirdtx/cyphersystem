from django.contrib.auth.decorators import login_required
from django.contrib.auth.mixins import LoginRequiredMixin
from django.http import HttpResponse
from django.shortcuts import render
from django.urls import reverse
from django.views import generic

from .models import Ability, Descriptor, Equipment, Focus, Skill, Type, Character, Cypher, Artifact

BASE_LOGIN_URL = '/admin/login/'

@login_required(login_url=BASE_LOGIN_URL)
def index(request):
    return render(request, 'cyphercore/index.html')

class AbilityDetailView(LoginRequiredMixin, generic.DetailView):
    login_url = BASE_LOGIN_URL
    model = Ability
    template_name = 'cyphercore/ability_detail.html'

class AbilityListView(LoginRequiredMixin, generic.ListView):
    login_url = BASE_LOGIN_URL
    model = Ability
    template_name = 'cyphercore/ability_list.html'

class DescriptorDetailView(LoginRequiredMixin, generic.DetailView):
    login_url = BASE_LOGIN_URL
    model = Descriptor
    template_name = 'cyphercore/descriptor_detail.html'

class DescriptorListView(LoginRequiredMixin, generic.ListView):
    login_url = BASE_LOGIN_URL
    model = Descriptor
    template_name = 'cyphercore/descriptor_list.html'

class EquipmentListView(LoginRequiredMixin, generic.ListView):
    login_url = BASE_LOGIN_URL
    model = Equipment
    template_name = 'cyphercore/equipment_list.html'

class FocusListView(LoginRequiredMixin, generic.ListView):
    login_url = BASE_LOGIN_URL
    model = Focus
    template_name = 'cyphercore/focus_list.html'

class FocusDetailView(LoginRequiredMixin, generic.DetailView):
    login_url = BASE_LOGIN_URL
    model = Focus
    template_name = 'cyphercore/focus_detail.html'

class SkillListView(LoginRequiredMixin, generic.ListView):
    login_url = BASE_LOGIN_URL
    model = Skill
    template_name = 'cyphercore/skill_list.html'

class TypeListView(LoginRequiredMixin, generic.ListView):
    login_url = BASE_LOGIN_URL
    model = Type
    template_name = 'cyphercore/type_list.html'

class TypeDetailView(LoginRequiredMixin, generic.DetailView):
    login_url = BASE_LOGIN_URL
    model = Type
    template_name = 'cyphercore/type_detail.html'

class CharacterListView(LoginRequiredMixin, generic.ListView):
    login_url = BASE_LOGIN_URL
    model = Character
    template_name = 'cyphercore/character_list.html'

class CharacterDetailView(LoginRequiredMixin, generic.DetailView):
    login_url = BASE_LOGIN_URL
    model = Character
    template_name = 'cyphercore/character_detail.html'

class CypherListView(LoginRequiredMixin, generic.ListView):
    login_url = BASE_LOGIN_URL
    model = Cypher
    template_name = 'cyphercore/cypher_list.html'

class CypherDetailView(LoginRequiredMixin, generic.DetailView):
    login_url = BASE_LOGIN_URL
    model = Cypher
    template_name = 'cyphercore/cypher_detail.html'

class ArtifactListView(LoginRequiredMixin, generic.ListView):
    login_url = BASE_LOGIN_URL
    model = Artifact
    template_name = 'cyphercore/artifact_list.html'

class ArtifactDetailView(LoginRequiredMixin, generic.DetailView):
    login_url = BASE_LOGIN_URL
    model = Artifact
    template_name = 'cyphercore/artifact_detail.html'
