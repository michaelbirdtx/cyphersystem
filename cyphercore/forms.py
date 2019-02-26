from django import forms
from django.forms import ModelForm
from .models import Character, TypeAbility


class SelectTypeAbilityForm(ModelForm):
    class Meta:
        model = TypeAbility
        fields = ['ability']

    def __init__(self, *args, char_pk, **kwargs):
        super(SelectTypeAbilityForm, self).__init__(*args, **kwargs)
        character = Character.objects.get(pk=char_pk)
        self.fields['ability'].queryset = TypeAbility.objects.filter(
            tier=1, type=character.type)
        self.fields['ability'].widget.attrs.update({'required': ''})
