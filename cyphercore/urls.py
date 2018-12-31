from django.urls import path

from . import views

app_name = 'cyphercore'
urlpatterns = [
    path('', views.index, name='index'),
    path(
        'abilities/', views.AbilityListView.as_view(),
        name='ability_list'),
    path(
        'abilities/cards/', views.AbilityCardsView.as_view(),
        name='ability_cards'),
    path(
        'abilities/<slug:slug>/', views.AbilityDetailView.as_view(),
        name='ability_detail'),
    path('artifacts/', views.ArtifactListView.as_view(), name='artifact_list'),
    path(
        'artifacts/cards/', views.ArtifactCardsView.as_view(),
        name='artifact_cards'),
    path(
        'artifacts/<slug:slug>/', views.ArtifactDetailView.as_view(),
        name='artifact_detail'),
    path(
        'characters/', views.CharacterListView.as_view(),
        name='character_list'),
    path(
        'characters/<slug:slug>/',
        views.CharacterDetailView.as_view(), name='character_detail'),
    path(
        'characters/<slug:slug>/summary/', views.CharacterDetailView.as_view(),
        name='character_detail'),
    path(
        'creatures/', views.CreatureListView.as_view(),
        name='creature_list'),
    path(
        'creatures/<slug:slug>/', views.CreatureDetailView.as_view(),
        name='creature_detail'),
    path(
        'cyphers/', views.CypherListView.as_view(),
        name='cypher_list'),
    path(
        'cyphers/cards/', views.CypherCardsView.as_view(),
        name='cypher_cards'),
    path(
        'cyphers/<slug:slug>/', views.CypherDetailView.as_view(),
        name='cypher_detail'),
    path(
        'descriptors/', views.DescriptorListView.as_view(),
        name='descriptor_list'),
    path(
        'descriptors/<slug:slug>/', views.DescriptorDetailView.as_view(),
        name='descriptor_detail'),
    path(
        'equipment/', views.EquipmentListView.as_view(),
        name='equipment_list'),
    path(
        'foci/', views.FocusListView.as_view(),
        name='focus_list'),
    path(
        'foci/<slug:slug>/', views.FocusDetailView.as_view(),
        name='focus_detail'),
    path(
        'skills/', views.SkillListView.as_view(),
        name='skill_list'),
    path(
        'types/', views.TypeListView.as_view(),
        name='type_list'),
    path(
        'types/<slug:slug>/', views.TypeDetailView.as_view(),
        name='type_detail'),
]
