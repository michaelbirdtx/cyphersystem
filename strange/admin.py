from django import forms
from django.contrib import admin

# Register your models here.
from .models import Sourcebook, Descriptor, Type, Focus, Ability, Skill, Equipment, Cypher, Artifact, FocusAbility, TypeAbility

class SourcebookAdmin(admin.ModelAdmin):
    list_display = ('name',)
    search_fields = ['name']

class DescriptorAdmin(admin.ModelAdmin):
    list_display = ('name', 'prefix', 'truncated_description', 'slug', 'sourcebook')
    prepopulated_fields = {'slug': ('name',)}
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
    prepopulated_fields = {'slug': ('name',)}
    search_fields = ['name']

class AbilityFociInline(admin.TabularInline):
    model = FocusAbility
    autocomplete_fields = ['focus']
    extra = 0
    ordering = ['focus__name']
    verbose_name = "Related Focus"
    verbose_name_plural = "Related Foci"

class AbilityTypesInline(admin.TabularInline):
    model = TypeAbility
    autocomplete_fields = ['type']
    extra = 0
    ordering = ['type__name']
    verbose_name = "Related Type"
    verbose_name_plural = "Related Types"

class AbilityAdmin(admin.ModelAdmin):
    inlines = [AbilityFociInline, AbilityTypesInline]
    list_display = ('name', 'usage', 'cost', 'truncated_description', 'slug', 'sourcebook')
    prepopulated_fields = {'slug': ('name',)}
    search_fields = ['name']

class SkillAdmin(admin.ModelAdmin):
    list_display = ('name',)
    search_fields = ['name']

class EquipmentAdmin(admin.ModelAdmin):
    list_display = ('name', 'type', 'base_cost', 'truncated_notes', 'slug', 'sourcebook')
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

admin.site.register(Descriptor, DescriptorAdmin)
admin.site.register(Type, TypeAdmin)
admin.site.register(Focus, FocusAdmin)
admin.site.register(Ability, AbilityAdmin)
admin.site.register(Equipment, EquipmentAdmin)
admin.site.register(Cypher, CypherAdmin)
admin.site.register(Artifact, ArtifactAdmin)
admin.site.register(Sourcebook, SourcebookAdmin)
admin.site.register(Skill, SkillAdmin)
