from django.contrib import admin
from .models import (
    Sourcebook, Descriptor, Type, Focus, Ability, Skill, Equipment,
    Cypher, Artifact, Attack, Character, FocusAbility, TypeAbility,
    CharacterSkill, CharacterEquipment, CharacterAbility, CharacterCypher,
    CharacterArtifact, Creature, Player, Campaign, CampaignCharacter
)
admin.site.site_header = 'Cypher System'
admin.site.site_title = 'Cypher System'
admin.site.index_title = 'Admin'

# Register your models here.


@admin.register(Sourcebook)
class SourcebookAdmin(admin.ModelAdmin):
    list_display = ('name',)
    search_fields = ['name']


@admin.register(Descriptor)
class DescriptorAdmin(admin.ModelAdmin):
    list_display = (
        'name', 'prefix', 'truncated_description', 'slug', 'sourcebook')
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


@admin.register(Type)
class TypeAdmin(admin.ModelAdmin):
    fieldsets = [
        (
            'TYPE DEFINITION', {
                'fields': [
                    ('name'), ('description'),
                    ('base_abilities'), ('slug', 'sourcebook')
                ]}
        ),
        (
            'BASE STATS', {
                'fields': [
                    ('might_pool', 'speed_pool', 'intellect_pool'),
                    ('might_edge', 'speed_edge', 'intellect_edge'),
                    ('cypher_limit', 'effort', 'pool_points')
                ]}
        )
    ]
    inlines = [TypeAbilitiesInline]
    list_display = (
        'name', 'might_pool', 'speed_pool', 'intellect_pool',
        'truncated_description', 'slug', 'sourcebook')
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


@admin.register(Focus)
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


@admin.register(Ability)
class AbilityAdmin(admin.ModelAdmin):
    inlines = [AbilityFociInline, AbilityTypesInline]
    list_display = (
        'name', 'usage', 'cost', 'truncated_description', 'slug', 'sourcebook')
    prepopulated_fields = {'slug': ('name',)}
    search_fields = ['name']


@admin.register(Skill)
class SkillAdmin(admin.ModelAdmin):
    list_display = ('name',)
    search_fields = ['name']


@admin.register(Equipment)
class EquipmentAdmin(admin.ModelAdmin):
    list_display = (
        'name', 'type', 'base_cost', 'truncated_notes', 'slug', 'sourcebook')
    prepopulated_fields = {'slug': ('name',)}
    search_fields = ['name', 'type', 'base_cost']


@admin.register(Cypher)
class CypherAdmin(admin.ModelAdmin):
    list_display = (
        'name', 'level_range', 'truncated_effect', 'slug', 'sourcebook')
    prepopulated_fields = {'slug': ('name',)}
    search_fields = ['name']


@admin.register(Artifact)
class ArtifactAdmin(admin.ModelAdmin):
    list_display = (
        'name', 'level_range', 'truncated_form', 'truncated_effect',
        'depletion', 'slug', 'sourcebook')
    prepopulated_fields = {'slug': ('name',)}
    search_fields = ['name']


class AttackInline(admin.TabularInline):
    model = Attack
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
    fields = ('cypher', 'level', 'appearance')


class CharacterArtifactsInline(admin.TabularInline):
    model = CharacterArtifact
    autocomplete_fields = ['artifact']
    extra = 0
    fields = ('artifact', 'level')


@admin.register(Character)
class CharacterAdmin(admin.ModelAdmin):
    fieldsets = [
        (
            'CHARACTER DEFINITION', {
                'fields': [
                    ('name', 'slug'), 'descriptor', 'type', 'focus',
                    ('cypher_limit', 'effort', 'tier'),
                    ('armor', 'money', 'xp'),
                    'background',
                    'notes',
                    'player',
                    'portrait_link'
                ]}
        ),
        (
            'STATS', {
                'fields': [
                    ('might_pool', 'might_current', 'might_edge'),
                    ('speed_pool', 'speed_current', 'speed_edge'),
                    ('intellect_pool', 'intellect_current', 'intellect_edge')
                ]}
        ),
        (
            'DAMAGE TRACK', {
                'fields': [
                    (
                        'recovery_roll', 'one_action', 'ten_minutes',
                        'one_hour', 'ten_hours', 'impaired', 'debilitated'
                    )
                ]}
        ),
        (
            'ADVANCEMENT', {
                'fields': [
                    (
                        'tier_1_edge', 'tier_1_effort', 'tier_1_pools',
                        'tier_1_skills', 'tier_1_other',
                        'tier_2_edge', 'tier_2_effort', 'tier_2_pools',
                        'tier_2_skills', 'tier_2_other'
                    ),
                    (
                        'tier_3_edge', 'tier_3_effort', 'tier_3_pools',
                        'tier_3_skills', 'tier_3_other',
                        'tier_4_edge', 'tier_4_effort', 'tier_4_pools',
                        'tier_4_skills', 'tier_4_other'
                    ),
                    (
                        'tier_5_edge', 'tier_5_effort', 'tier_5_pools',
                        'tier_5_skills', 'tier_5_other',
                        'tier_6_edge', 'tier_6_effort', 'tier_6_pools',
                        'tier_6_skills', 'tier_6_other'
                    )
                ]}
        )
    ]
    inlines = [
        CharacterAbilitiesInline, AttackInline, CharacterSkillsInline,
        CharacterEquipmentInline, CharacterCyphersInline,
        CharacterArtifactsInline
    ]
    list_display = (
        'name', 'descriptor', 'type', 'focus', 'tier', 'player', 'slug'
    )
    prepopulated_fields = {'slug': ('name',)}
    save_as = True
    search_fields = ['name']


@admin.register(Creature)
class CreatureAdmin(admin.ModelAdmin):
    fieldsets = [
        (
            'CREATURE DEFINITION', {
                'fields': [
                    ('name', 'slug'),
                    ('level', 'health', 'armor'),
                    ('damage_inflicted', 'environment'),
                    ('motive', 'movement'),
                    'description',
                    'sourcebook',
                    'portrait_link'
                ]}
        ),
        (
            'DETAILS', {'fields': [
                'combat', 'interaction', 'modifications',
                'use', 'loot', 'gm_intrusion'
            ]}
        )
    ]
    list_display = ('name', 'level', 'truncated_description')
    prepopulated_fields = {'slug': ('name',)}
    save_as = True
    search_fields = ['name']


@admin.register(Player)
class PlayerAdmin(admin.ModelAdmin):
    list_display = ('display_name', 'email', 'first_name', 'last_name')
    search_fields = ['display_name', 'first_name', 'last_name', 'email']


class CampaignCharacterInline(admin.TabularInline):
    model = CampaignCharacter
    autocomplete_fields = ['character']
    extra = 0
    fields = ('character', 'active')


@admin.register(Campaign)
class CampaignAdmin(admin.ModelAdmin):
    inlines = [CampaignCharacterInline]
    list_display = ('name', 'gm')
    search_fields = ['name', 'gm']
