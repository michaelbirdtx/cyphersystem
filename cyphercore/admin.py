from django import forms
from django.contrib import admin
admin.site.site_header = 'Cypher System'
admin.site.site_title = 'Cypher System'
admin.site.index_title = 'Admin'

# Register your models here.
from .models import Sourcebook, Genre, Descriptor, Type, Focus, Ability, Skill, Equipment, Cypher, FocusAbility, TypeAbility

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
    extra = 0

class TypeAdmin(admin.ModelAdmin):
    fieldsets = [
        ('TYPE DEFINITION', {'fields': [('name'), ('description'), ('abilities'), ('slug', 'sourcebook')]}),
        ('BASE STATS', {'fields': [('might_pool', 'speed_pool', 'intellect_pool'), ('might_edge', 'speed_edge', 'intellect_edge'), ('cypher_limit', 'effort', 'pool_points')]}),
    ]
    inlines = [TypeAbilitiesInline]
    list_display = ('name', 'might_pool', 'speed_pool', 'intellect_pool', 'truncated_description', 'slug', 'sourcebook')
    prepopulated_fields = {'slug': ('name',)}
    search_fields = ['name']

class FocusAbilitiesInline(admin.TabularInline):
    model = FocusAbility
    extra = 0

class FocusAdmin(admin.ModelAdmin):
    inlines = [FocusAbilitiesInline]
    list_display = ('name', 'truncated_description', 'slug', 'sourcebook')
    search_fields = ['name']

class AbilityAdmin(admin.ModelAdmin):
    list_display = ('name', 'type', 'cost', 'truncated_description', 'slug', 'sourcebook')
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

admin.site.register(Descriptor, DescriptorAdmin)
admin.site.register(Type, TypeAdmin)
admin.site.register(Focus, FocusAdmin)
admin.site.register(Ability, AbilityAdmin)
admin.site.register(Equipment, EquipmentAdmin)
admin.site.register(Cypher, CypherAdmin)
admin.site.register(Sourcebook, SourcebookAdmin)
admin.site.register(Skill, SkillAdmin)
admin.site.register(Genre, GenreAdmin)
