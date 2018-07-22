from django import forms
from django.contrib import admin
admin.site.site_header = 'Cypher System'
admin.site.site_title = 'Cypher System'
admin.site.index_title = 'Admin'

# Register your models here.
from .models import Sourcebook, Genre, Descriptor, Type, Focus, Ability, Skill, Equipment, Cypher, Artifact, FocusAbility, TypeAbility, Character, CharacterSkill, CharacterEquipment, CharacterCypher, CharacterArtifact

class SourcebookAdmin(admin.ModelAdmin):
    list_display = ('name', 'enabled')
    list_editable = ('enabled',)
    search_fields = ['name']

class GenreAdmin(admin.ModelAdmin):
    list_display = ('name', 'sourcebook')
    search_fields = ['name']

class DescriptorAdmin(admin.ModelAdmin):
    list_display = ('name', 'truncated_description', 'slug', 'sourcebook')
    search_fields = ['name']

class TypeAbilitiesInline(admin.TabularInline):
    model = TypeAbility
    autocomplete_fields = ['ability']
    extra = 0
    def get_queryset(self, request):
        qs = super(TypeAbilitiesInline, self).get_queryset(request)
        qs = qs.prefetch_related('ability')
        return qs

class TypeAdmin(admin.ModelAdmin):
    fieldsets = [
        ('TYPE DEFINITION', {'fields': [('name'), ('description'), ('base_abilities'), ('slug', 'sourcebook')]}),
        ('BASE STATS', {'fields': [('might_pool', 'speed_pool', 'intellect_pool'), ('might_edge', 'speed_edge', 'intellect_edge'), ('cypher_limit', 'effort', 'pool_points')]})
    ]
    inlines = [TypeAbilitiesInline]
    list_display = ('name', 'might_pool', 'speed_pool', 'intellect_pool', 'truncated_description', 'slug', 'sourcebook')
    prepopulated_fields = {'slug': ('name',)}
    search_fields = ['name']

class FocusAbilitiesInline(admin.TabularInline):
    model = FocusAbility
    autocomplete_fields = ['ability']
    extra = 0
    def get_queryset(self, request):
        qs = super(FocusAbilitiesInline, self).get_queryset(request)
        qs = qs.prefetch_related('ability')
        return qs

class FocusAdmin(admin.ModelAdmin):
    inlines = [FocusAbilitiesInline]
    list_display = ('name', 'truncated_description', 'slug', 'sourcebook')
    search_fields = ['name']

class AbilityAdmin(admin.ModelAdmin):
    list_display = ('name', 'usage', 'cost', 'truncated_description', 'slug', 'sourcebook')
    prepopulated_fields = {'slug': ('name',)}
    search_fields = ['name']

class SkillAdmin(admin.ModelAdmin):
    list_display = ('name',)
    search_fields = ['name']

class EquipmentAdmin(admin.ModelAdmin):
    list_display = ('name', 'genre', 'type', 'base_cost', 'truncated_notes', 'slug', 'sourcebook')
    prepopulated_fields = {'slug': ('name',)}
    search_fields = ['name', 'type', 'base_cost']

class CypherAdmin(admin.ModelAdmin):
    list_display = ('name', 'level_range', 'truncated_effect', 'slug', 'sourcebook')
    prepopulated_fields = {'slug': ('name',)}
    search_fields = ['name']

class ArtifactAdmin(admin.ModelAdmin):
    list_display = ('name', 'level_range', 'truncated_form', 'truncated_effect', 'depletion', 'slug', 'sourcebook')
    prepopulated_fields = {'slug': ('name',)}
    search_fields = ['name']

class CharacterEquipmentInline(admin.TabularInline):
    model = CharacterEquipment
    autocomplete_fields = ['equipment']
    extra = 0

class CharacterSkillsInline(admin.TabularInline):
    model = CharacterSkill
    autocomplete_fields = ['skill']
    extra = 0

class CharacterCyphersInline(admin.TabularInline):
    model = CharacterCypher
    autocomplete_fields = ['cypher']
    extra = 0

class CharacterArtifactsInline(admin.TabularInline):
    model = CharacterArtifact
    autocomplete_fields = ['artifact']
    extra = 0

class CharacterAdmin(admin.ModelAdmin):
    fieldsets = [
        ('CHARACTER DEFINITION', {'fields': [('name', 'slug'), 'descriptor', 'type', 'focus', ('cypher_limit', 'effort', 'tier'), ('armor', 'money', 'xp'), 'background', 'notes', 'portrait_link']}),
        ('STATS', {'fields': [('might_pool', 'might_current', 'might_edge'), ('speed_pool', 'speed_current', 'speed_edge'), ('intellect_pool', 'intellect_current', 'intellect_edge')]}),
        ('DAMAGE TRACK', {'fields': [('recovery_roll', 'one_action', 'ten_minutes', 'one_hour', 'ten_hours', 'impaired', 'debilitated')]}),
        ('ABILITIES', {'fields': ['abilities']})
    ]
    filter_horizontal = ('abilities',)
    inlines = [CharacterSkillsInline, CharacterEquipmentInline, CharacterCyphersInline, CharacterArtifactsInline]
    list_display = ('name', 'descriptor', 'type', 'focus', 'tier', 'slug')
    prepopulated_fields = {'slug': ('name',)}
    search_fields = ['name']

admin.site.register(Descriptor, DescriptorAdmin)
admin.site.register(Type, TypeAdmin)
admin.site.register(Focus, FocusAdmin)
admin.site.register(Ability, AbilityAdmin)
admin.site.register(Equipment, EquipmentAdmin)
admin.site.register(Cypher, CypherAdmin)
admin.site.register(Artifact, ArtifactAdmin)
admin.site.register(Sourcebook, SourcebookAdmin)
admin.site.register(Skill, SkillAdmin)
admin.site.register(Genre, GenreAdmin)
admin.site.register(Character, CharacterAdmin)
