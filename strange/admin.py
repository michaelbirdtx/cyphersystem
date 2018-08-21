from django import forms
from django.contrib import admin
from django.http import HttpResponse
from django.urls import resolve, reverse
from django.utils.safestring import mark_safe

class EditLinkToInlineObject(object):
    def edit_link(self, instance):
        url = reverse('admin:%s_%s_change' % (
            instance._meta.app_label,  instance._meta.model_name),  args=[instance.pk] )
        if instance.pk:
            return mark_safe(u'<a href="{u}" target="_blank">Edit Details</a>'.format(u=url))
        else:
            return ''

from .models import Sourcebook, Descriptor, Type, Focus, Ability, Skill, Equipment, Cypher, Artifact, FocusAbility, TypeAbility, Character, CharacterAbility, CharacterSkill, CharacterEquipment, CharacterCypher, CharacterArtifact, Attack, Recursion, RecursionAbility, RecursionSkill, RecursionAttack

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

class CharacterAbilitiesInline(admin.TabularInline):
    model = CharacterAbility
    autocomplete_fields = ['ability']
    extra = 0
    fields = ('ability', 'note')
    def get_queryset(self, request):
        qs = super(CharacterAbilitiesInline, self).get_queryset(request)
        qs = qs.prefetch_related('ability')
        return qs

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
    fields = ('name', 'level_range', 'form', 'effect', 'slug', 'sourcebook')
    list_display = ('name', 'level_range', 'truncated_effect', 'slug', 'sourcebook')
    prepopulated_fields = {'slug': ('name',)}
    search_fields = ['name']

class ArtifactAdmin(admin.ModelAdmin):
    list_display = ('name', 'level_range', 'truncated_form', 'truncated_effect', 'depletion', 'slug', 'sourcebook')
    prepopulated_fields = {'slug': ('name',)}
    search_fields = ['name']

class AttackInline(admin.TabularInline):
    model = Attack
    extra = 0
    fields = ('name', 'modifier', 'damage')

class RecursionAttackInline(admin.TabularInline):
    model = RecursionAttack
    extra = 0
    fields = ('name', 'modifier', 'damage')

class CharacterEquipmentInline(admin.TabularInline):
    model = CharacterEquipment
    autocomplete_fields = ['equipment']
    extra = 0
    fields = ('equipment', 'quantity', 'brief_note')

class CharacterSkillsInline(admin.TabularInline):
    model = CharacterSkill
    autocomplete_fields = ['skill']
    extra = 0
    fields = ('skill', 'skill_level')

class CharacterCyphersInline(admin.TabularInline):
    model = CharacterCypher
    autocomplete_fields = ['cypher']
    extra = 0
    fields = ('cypher', 'level')

class CharacterArtifactsInline(admin.TabularInline):
    model = CharacterArtifact
    autocomplete_fields = ['artifact']
    extra = 0
    fields = ('artifact', 'level', 'recursion')

    def get_formset(self, request, obj=None, **kwargs):
        self.parent_obj = obj
        return super(CharacterArtifactsInline, self).get_formset(request, obj, **kwargs)
    def formfield_for_foreignkey(self, db_field, request, **kwargs):
        if db_field.name == "recursion":
            if self.parent_obj:
                kwargs["queryset"] = Recursion.objects.filter(character_id = self.parent_obj.id)
            else:
                kwargs["queryset"] = Recursion.objects.filter(character_id = 0)
        return super().formfield_for_foreignkey(db_field, request, **kwargs)

class RecursionSkillsInline(admin.TabularInline):
    model = RecursionSkill
    autocomplete_fields = ['skill']
    extra = 0
    fields = ('skill', 'skill_level')

class RecursionsInline(EditLinkToInlineObject, admin.TabularInline):
    model = Recursion
    extra = 0
    fields = ('name', 'focus', 'edit_link')
    readonly_fields = ('edit_link',)

class CharacterAdmin(admin.ModelAdmin):
    fieldsets = [
        ('CHARACTER DEFINITION', {'fields': [('name', 'slug'), ('descriptor', 'type'), ('cypher_limit', 'effort', 'tier'), 'background', 'notes', 'portrait_link']}),
        ('STATS', {'fields': [('might_pool', 'might_current', 'might_edge'), ('speed_pool', 'speed_current', 'speed_edge'), ('intellect_pool', 'intellect_current', 'intellect_edge')]}),
        ('DAMAGE TRACK', {'fields': [('recovery_roll', 'one_action', 'ten_minutes', 'one_hour', 'ten_hours', 'impaired', 'debilitated')]}),
        ('ADVANCEMENT', {'fields': [('tier_1_edge', 'tier_1_effort', 'tier_1_pools', 'tier_1_skills', 'tier_1_other', 'tier_2_edge', 'tier_2_effort', 'tier_2_pools', 'tier_2_skills', 'tier_2_other'), ('tier_3_edge', 'tier_3_effort', 'tier_3_pools', 'tier_3_skills', 'tier_3_other', 'tier_4_edge', 'tier_4_effort', 'tier_4_pools', 'tier_4_skills', 'tier_4_other'), ('tier_5_edge', 'tier_5_effort', 'tier_5_pools', 'tier_5_skills', 'tier_5_other', 'tier_6_edge', 'tier_6_effort', 'tier_6_pools', 'tier_6_skills', 'tier_6_other')]}),
    ]
    inlines = [CharacterAbilitiesInline, AttackInline, CharacterSkillsInline, CharacterCyphersInline, RecursionsInline]
    list_display = ('name', 'descriptor', 'type', 'tier', 'slug')
    prepopulated_fields = {'slug': ('name',)}
    search_fields = ['name']

class RecursionAbilitiesInline(admin.TabularInline):
    model = RecursionAbility
    autocomplete_fields = ['ability']
    extra = 0
    fields = ('ability', 'note')
    def get_queryset(self, request):
        qs = super(RecursionAbilitiesInline, self).get_queryset(request)
        qs = qs.prefetch_related('ability')
        return qs

class RecursionAdmin(admin.ModelAdmin):
    fieldsets = [
        ('RECURSION DEFINITION', {'fields': [('name', 'character', 'focus'), 'notes']}),
        ('STATS', {'fields': [('armor', 'money'), ('might_pool_adjust', 'might_edge_adjust'), ('speed_pool_adjust', 'speed_edge_adjust'), ('intellect_pool_adjust', 'intellect_edge_adjust')]}),
    ]
    inlines = [RecursionAbilitiesInline, RecursionAttackInline, CharacterEquipmentInline, RecursionSkillsInline, CharacterArtifactsInline]
    list_display = ('character', 'name')
    readonly_fields = ('name', 'character', 'focus', )
    search_fields = ['name', 'character']
    def get_model_perms(self, request):
        return {}
    def response_post_save_change(self, request, obj):
        return HttpResponse('<script type="text/javascript">window.close()</script>')
    def has_add_permission(self, request):
        return False
    def has_delete_permission(self, request, obj=None):
        return False

admin.site.register(Descriptor, DescriptorAdmin)
admin.site.register(Type, TypeAdmin)
admin.site.register(Focus, FocusAdmin)
admin.site.register(Ability, AbilityAdmin)
admin.site.register(Equipment, EquipmentAdmin)
admin.site.register(Cypher, CypherAdmin)
admin.site.register(Artifact, ArtifactAdmin)
admin.site.register(Sourcebook, SourcebookAdmin)
admin.site.register(Skill, SkillAdmin)
admin.site.register(Character, CharacterAdmin)
admin.site.register(Recursion, RecursionAdmin)
