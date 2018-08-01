from django import forms
from django.contrib import admin

# Register your models here.
from .models import nSourcebook, nDescriptor, nAbility, nSkill, nEquipment

class SourcebookAdmin(admin.ModelAdmin):
    list_display = ('name', 'enabled')
    list_editable = ('enabled',)
    search_fields = ['name']

class DescriptorAdmin(admin.ModelAdmin):
    list_display = ('name', 'prefix', 'truncated_description', 'slug', 'sourcebook')
    search_fields = ['name']

class AbilityAdmin(admin.ModelAdmin):
    #inlines = [AbilityFociInline, AbilityTypesInline]
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

admin.site.register(nDescriptor, DescriptorAdmin)
admin.site.register(nAbility, AbilityAdmin)
admin.site.register(nEquipment, EquipmentAdmin)
admin.site.register(nSourcebook, SourcebookAdmin)
admin.site.register(nSkill, SkillAdmin)
