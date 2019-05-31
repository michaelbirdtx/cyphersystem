from django.contrib.auth.decorators import login_required
from django.contrib.auth.mixins import LoginRequiredMixin
from django.forms import formset_factory
from django.http import HttpResponseRedirect
from django.shortcuts import render
from django.views import generic

from .models import (Ability, Descriptor, Equipment, Focus, Skill, Type,
                     Character, Cypher, Creature, Artifact, Player, Campaign,
                     CharacterAbility, TypeAbility)
from .forms import SelectTypeAbilityForm

BASE_LOGIN_URL = '/admin/login/'


@login_required(login_url=BASE_LOGIN_URL)
def index(request):
    return render(request, 'cyphercore/index.html')


class AbilityDetailView(LoginRequiredMixin, generic.DetailView):
    login_url = BASE_LOGIN_URL
    model = Ability
    template_name = 'cyphercore/ability_detail.html'


class AbilityCardsView(LoginRequiredMixin, generic.ListView):
    login_url = BASE_LOGIN_URL
    model = Ability
    template_name = 'cyphercore/ability_cards.html'


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


class CreatureListView(LoginRequiredMixin, generic.ListView):
    login_url = BASE_LOGIN_URL
    model = Creature
    template_name = 'cyphercore/creature_list.html'


class CreatureDetailView(LoginRequiredMixin, generic.DetailView):
    login_url = BASE_LOGIN_URL
    model = Creature
    template_name = 'cyphercore/creature_detail.html'


class CypherListView(LoginRequiredMixin, generic.ListView):
    login_url = BASE_LOGIN_URL
    model = Cypher
    template_name = 'cyphercore/cypher_list.html'


class CypherCardsView(LoginRequiredMixin, generic.ListView):
    login_url = BASE_LOGIN_URL
    model = Cypher
    template_name = 'cyphercore/cypher_cards.html'


class CypherDetailView(LoginRequiredMixin, generic.DetailView):
    login_url = BASE_LOGIN_URL
    model = Cypher
    template_name = 'cyphercore/cypher_detail.html'


class ArtifactListView(LoginRequiredMixin, generic.ListView):
    login_url = BASE_LOGIN_URL
    model = Artifact
    template_name = 'cyphercore/artifact_list.html'


class ArtifactCardsView(LoginRequiredMixin, generic.ListView):
    login_url = BASE_LOGIN_URL
    model = Artifact
    template_name = 'cyphercore/artifact_cards.html'


class ArtifactDetailView(LoginRequiredMixin, generic.DetailView):
    login_url = BASE_LOGIN_URL
    model = Artifact
    template_name = 'cyphercore/artifact_detail.html'


class PlayerListView(LoginRequiredMixin, generic.ListView):
    login_url = BASE_LOGIN_URL
    model = Player
    template_name = 'cyphercore/player_list.html'


class PlayerDetailView(generic.DetailView):
    model = Player
    template_name = 'cyphercore/player_detail.html'


class PCDetailView(generic.DetailView):
    model = Character
    template_name = 'cyphercore/pc_detail.html'


class CampaignCreateView(generic.CreateView):
    model = Campaign
    template_name = 'cyphercore/campaign_edit.html'
    fields = ['name', 'description']

    def form_valid(self, form):
        campaign = form.save(commit=False)
        campaign.gm_id = self.kwargs['pk']
        campaign.save()
        return HttpResponseRedirect('/cyphercore/players/' +
                                    self.kwargs['slug'])

    def get_context_data(self, **kwargs):
        context = super(CampaignCreateView, self).get_context_data(**kwargs)
        context['player_slug'] = self.kwargs['slug']
        return context


class CampaignUpdateView(generic.UpdateView):
    model = Campaign
    template_name = 'cyphercore/campaign_edit.html'
    fields = ['name', 'description']

    def form_valid(self, form):
        form.save()
        return HttpResponseRedirect('/cyphercore/players/' +
                                    self.kwargs['slug'])

    def get_context_data(self, **kwargs):
        context = super(CampaignUpdateView, self).get_context_data(**kwargs)
        context['player_slug'] = self.kwargs['slug']
        return context


class CampaignDetailView(generic.DetailView):
    model = Campaign
    template_name = 'cyphercore/campaign_detail.html'


class CharacterCreateView(generic.CreateView):
    model = Character
    template_name = 'cyphercore/character_create_step_1.html'
    fields = ['name', 'descriptor', 'type', 'focus']

    def form_valid(self, form):
        character = form.save(commit=False)
        character.player_id = self.kwargs['pk']
        character.save()
        return HttpResponseRedirect(
            '/cyphercore/players/' + self.kwargs['slug'] +
            '/character_create_step_2/' + str(character.id))

    def get_context_data(self, **kwargs):
        context = super(CharacterCreateView,
                        self).get_context_data(**kwargs)
        context['player_slug'] = self.kwargs['slug']
        return context


def character_create_step_2(request, slug, pk):
    character = Character.objects.get(pk=pk)
    AbilityFormSet = formset_factory(SelectTypeAbilityForm, extra=4)
    if request.method == 'POST':
        formset = AbilityFormSet(
            request.POST, request.FILES, form_kwargs={'char_pk': pk})
        for i in range(4):
            insert_type_ability(character,
                                request.POST['form-'+str(i)+'-ability'])
        return HttpResponseRedirect(
            '/cyphercore/players/' + slug
            + '/character_create_step_3/' + str(pk)
        )
    else:
        formset = AbilityFormSet(form_kwargs={'char_pk': pk})
    return render(request, 'cyphercore/character_create_step_2.html',
                  {'formset': formset, 'character': character})


def insert_type_ability(character, ability_pk):
    ta = TypeAbility.objects.get(pk=ability_pk)
    cax = CharacterAbility(character=character, ability=ta.ability)
    cax.save()
