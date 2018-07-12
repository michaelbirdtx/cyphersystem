from django.urls import path

from . import views

app_name = 'cyphercore'
urlpatterns = [
    path('', views.index, name='index'),
    path('abilities/<slug:slug>/', views.AbilityDetailView.as_view(), name='ability_detail'),
    path('abilities/', views.AbilityListView.as_view(), name='ability_list'),
    path('foci/<slug:slug>/', views.FocusDetailView.as_view(), name='focus_detail'),
    path('types/<slug:slug>/', views.TypeDetailView.as_view(), name='type_detail'),
]
