from django.contrib.auth.decorators import login_required
from django.contrib.auth.mixins import LoginRequiredMixin
from django.shortcuts import render
from django.views import generic

from .models import (Ability, Descriptor, Equipment, Focus, Skill, Type,
                     Character, Cypher, Artifact, Creature, Player)


BASE_LOGIN_URL = '/admin/login/'


@login_required(login_url=BASE_LOGIN_URL)
def index(request):
    return render(request, 'strange/index.html')


class AbilityDetailView(LoginRequiredMixin, generic.DetailView):
    login_url = BASE_LOGIN_URL
    model = Ability
    template_name = 'strange/ability_detail.html'


class AbilityCardsView(LoginRequiredMixin, generic.ListView):
    login_url = BASE_LOGIN_URL
    model = Ability
    template_name = 'strange/ability_cards.html'


class AbilityListView(LoginRequiredMixin, generic.ListView):
    login_url = BASE_LOGIN_URL
    model = Ability
    template_name = 'strange/ability_list.html'


class DescriptorDetailView(LoginRequiredMixin, generic.DetailView):
    login_url = BASE_LOGIN_URL
    model = Descriptor
    template_name = 'strange/descriptor_detail.html'


class DescriptorListView(LoginRequiredMixin, generic.ListView):
    login_url = BASE_LOGIN_URL
    model = Descriptor
    template_name = 'strange/descriptor_list.html'


class EquipmentListView(LoginRequiredMixin, generic.ListView):
    login_url = BASE_LOGIN_URL
    model = Equipment
    template_name = 'strange/equipment_list.html'


class FocusListView(LoginRequiredMixin, generic.ListView):
    login_url = BASE_LOGIN_URL
    model = Focus
    template_name = 'strange/focus_list.html'


class FocusDetailView(LoginRequiredMixin, generic.DetailView):
    login_url = BASE_LOGIN_URL
    model = Focus
    template_name = 'strange/focus_detail.html'


class SkillListView(LoginRequiredMixin, generic.ListView):
    login_url = BASE_LOGIN_URL
    model = Skill
    template_name = 'strange/skill_list.html'


class TypeListView(LoginRequiredMixin, generic.ListView):
    login_url = BASE_LOGIN_URL
    model = Type
    template_name = 'strange/type_list.html'


class TypeDetailView(LoginRequiredMixin, generic.DetailView):
    login_url = BASE_LOGIN_URL
    model = Type
    template_name = 'strange/type_detail.html'


class CharacterListView(LoginRequiredMixin, generic.ListView):
    login_url = BASE_LOGIN_URL
    model = Character
    template_name = 'strange/character_list.html'


class CharacterDetailView(LoginRequiredMixin, generic.DetailView):
    login_url = BASE_LOGIN_URL
    model = Character
    template_name = 'strange/character_detail.html'


class CreatureListView(LoginRequiredMixin, generic.ListView):
    login_url = BASE_LOGIN_URL
    model = Creature
    template_name = 'strange/creature_list.html'


class CreatureDetailView(LoginRequiredMixin, generic.DetailView):
    login_url = BASE_LOGIN_URL
    model = Creature
    template_name = 'strange/creature_detail.html'


class CypherListView(LoginRequiredMixin, generic.ListView):
    login_url = BASE_LOGIN_URL
    model = Cypher
    template_name = 'strange/cypher_list.html'


class CypherCardsView(LoginRequiredMixin, generic.ListView):
    login_url = BASE_LOGIN_URL
    model = Cypher
    template_name = 'strange/cypher_cards.html'


class CypherDetailView(LoginRequiredMixin, generic.DetailView):
    login_url = BASE_LOGIN_URL
    model = Cypher
    template_name = 'strange/cypher_detail.html'


class ArtifactListView(LoginRequiredMixin, generic.ListView):
    login_url = BASE_LOGIN_URL
    model = Artifact
    template_name = 'strange/artifact_list.html'


class ArtifactCardsView(LoginRequiredMixin, generic.ListView):
    login_url = BASE_LOGIN_URL
    model = Artifact
    template_name = 'strange/artifact_cards.html'


class ArtifactDetailView(LoginRequiredMixin, generic.DetailView):
    login_url = BASE_LOGIN_URL
    model = Artifact
    template_name = 'strange/artifact_detail.html'


class PlayerDetailView(generic.DetailView):
    login_url = BASE_LOGIN_URL
    model = Player
    template_name = 'strange/player_detail.html'


class PCDetailView(generic.DetailView):
    login_url = BASE_LOGIN_URL
    model = Character
    template_name = 'strange/pc_detail.html'
