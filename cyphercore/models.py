import uuid
from django.db import models

truncate_length = 80


def truncate_to(length, data):
    return (data[:length - 3] + '...') if len(data) > length else data


class Sourcebook(models.Model):
    class Meta:
        ordering = ['name']
        verbose_name = 'Sourcebook'
        verbose_name_plural = 'Sourcebooks'
    name = models.CharField('sourcebook', max_length=100, unique=True)

    def __str__(self):
        return self.name


class Skill(models.Model):
    class Meta:
        ordering = ['name']
        verbose_name = 'Skill'
        verbose_name_plural = 'Skills'
    name = models.CharField(max_length=100, unique=True)

    def __str__(self):
        return self.name


class Ability(models.Model):
    class Meta:
        ordering = ['name']
        verbose_name = 'Ability'
        verbose_name_plural = 'Abilities'
    name = models.CharField(max_length=50, unique=True)
    ACTION = 'Action'
    ENABLER = 'Enabler'
    SPECIAL = 'Special'
    ABILITY_USAGE_CHOICES = (
        (ACTION, 'Action'),
        (ENABLER, 'Enabler'),
        (SPECIAL, 'Special'),
    )
    usage = models.CharField(
        max_length=10,
        choices=ABILITY_USAGE_CHOICES,
        default='Action')
    cost = models.CharField(blank=False, default='-', max_length=30)
    description = models.TextField(blank=True)
    imparts_skills = models.ManyToManyField(Skill, blank=True)
    slug = models.SlugField(max_length=50)
    sourcebook = models.ForeignKey(
        Sourcebook, default=1, on_delete=models.PROTECT)

    def truncated_description(self):
        return truncate_to(truncate_length, self.description)
    truncated_description.short_description = 'Short Description'

    def __str__(self):
        return self.name


class Artifact(models.Model):
    class Meta:
        ordering = ['name']
        verbose_name = 'Artifact'
        verbose_name_plural = 'Artifacts'
    name = models.CharField(max_length=50, unique=True)
    level_range = models.CharField(max_length=10)
    form = models.TextField()
    effect = models.TextField()
    depletion = models.CharField(blank=False, default='-', max_length=20)
    slug = models.SlugField(max_length=50)
    sourcebook = models.ForeignKey(
        Sourcebook, default=1, on_delete=models.PROTECT)

    def truncated_form(self):
        return truncate_to(truncate_length, self.form)
    truncated_form.short_description = 'Form'

    def truncated_effect(self):
        return truncate_to(truncate_length, self.effect)
    truncated_effect.short_description = 'Effect'

    def __str__(self):
        return self.name


class Cypher(models.Model):
    class Meta:
        ordering = ['name']
        verbose_name = 'Cypher'
        verbose_name_plural = 'Cyphers'
    name = models.CharField(max_length=50, unique=True)
    level_range = models.CharField(max_length=10)
    effect = models.TextField()
    slug = models.SlugField(max_length=50)
    sourcebook = models.ForeignKey(
        Sourcebook, default=1, on_delete=models.PROTECT)

    def truncated_effect(self):
        return truncate_to(truncate_length, self.effect)
    truncated_effect.short_description = 'Effect'

    def __str__(self):
        return self.name


class Descriptor(models.Model):
    class Meta:
        ordering = ['name']
        verbose_name = 'Descriptor'
        verbose_name_plural = 'Descriptors'
    name = models.CharField('descriptor name', max_length=50, unique=True)
    prefix = models.CharField(max_length=5, default='a')
    description = models.TextField(blank=True)
    characteristics = models.TextField(blank=True)
    starting_link = models.TextField(blank=True)
    slug = models.SlugField(max_length=50)
    sourcebook = models.ForeignKey(
        Sourcebook, default=1, on_delete=models.PROTECT)

    def truncated_description(self):
        return truncate_to(truncate_length, self.description)
    truncated_description.short_description = 'Short Description'

    def __str__(self):
        return self.name


class Equipment(models.Model):
    class Meta:
        ordering = ['name']
        verbose_name_plural = 'Equipment'
        verbose_name = 'Equipment'
    name = models.CharField(max_length=50, unique=True)
    ARMOR = 'Armor'
    ARMOR_LIGHT = 'Armor - Light'
    ARMOR_MEDIUM = 'Armor - Medium'
    ARMOR_HEAVY = 'Armor - Heavy'
    WEAPON = 'Weapon'
    WEAPON_LIGHT = 'Weapon - Light'
    WEAPON_MEDIUM = 'Weapon - Medium'
    WEAPON_HEAVY = 'Weapon - Heavy'
    OTHER = 'Other'
    SPECIAL = 'Special'
    EQUIPMENT_TYPE_CHOICES = (
        (ARMOR, 'Armor'),
        (ARMOR_LIGHT, 'Armor - Light'),
        (ARMOR_MEDIUM, 'Armor - Medium'),
        (ARMOR_HEAVY, 'Armor - Heavy'),
        (WEAPON, 'Weapon'),
        (WEAPON_LIGHT, 'Weapon - Light'),
        (WEAPON_MEDIUM, 'Weapon - Medium'),
        (WEAPON_HEAVY, 'Weapon - Heavy'),
        (OTHER, 'Other'),
        (SPECIAL, 'Special'),
    )
    type = models.CharField(max_length=30, choices=EQUIPMENT_TYPE_CHOICES)
    base_cost = models.CharField(blank=True, max_length=30)
    notes = models.TextField(blank=True)
    slug = models.SlugField(max_length=50)
    sourcebook = models.ForeignKey(
        Sourcebook, default=1, on_delete=models.PROTECT)

    def truncated_notes(self):
        return truncate_to(truncate_length, self.notes)
    truncated_notes.short_description = 'Notes'

    def __str__(self):
        return self.name


class Focus(models.Model):
    class Meta:
        ordering = ['name']
        verbose_name = 'Focus'
        verbose_name_plural = 'Foci'
    name = models.CharField(max_length=50, unique=True)
    description = models.TextField(blank=True)
    connections = models.TextField(blank=True)
    other_details = models.TextField(blank=True)
    slug = models.SlugField(max_length=50)
    abilities = models.ManyToManyField(Ability, through='FocusAbility')
    sourcebook = models.ForeignKey(
        Sourcebook, default=1, on_delete=models.PROTECT)

    def truncated_description(self):
        return truncate_to(truncate_length, self.description)
    truncated_description.short_description = 'Short Description'

    def __str__(self):
        return self.name


class FocusAbility(models.Model):
    class Meta:
        ordering = ['tier', 'ability__name']
        verbose_name = 'Focus Ability'
        verbose_name_plural = 'Focus Abilities'
    tier = models.IntegerField(default=1)
    focus = models.ForeignKey(Focus, on_delete=models.CASCADE)
    ability = models.ForeignKey(Ability, on_delete=models.CASCADE)

    def __str__(self):
        return self.ability.name


class Type(models.Model):
    class Meta:
        ordering = ['name']
        verbose_name = 'Type'
        verbose_name_plural = 'Types'
    name = models.CharField('type name', max_length=20, unique=True)
    might_pool = models.IntegerField(default=10)
    might_edge = models.IntegerField(default=0)
    speed_pool = models.IntegerField(default=10)
    speed_edge = models.IntegerField(default=0)
    intellect_pool = models.IntegerField(default=10)
    intellect_edge = models.IntegerField(default=0)
    effort = models.IntegerField(default=1)
    cypher_limit = models.IntegerField(default=2)
    pool_points = models.IntegerField(default=6)
    description = models.TextField(blank=True)
    base_abilities = models.TextField(blank=True)
    slug = models.SlugField(max_length=50)
    sourcebook = models.ForeignKey(
        Sourcebook, default=1, on_delete=models.PROTECT)
    abilities = models.ManyToManyField(Ability, through='TypeAbility')

    def truncated_description(self):
        return truncate_to(truncate_length, self.description)
    truncated_description.short_description = 'Short Description'

    def __str__(self):
        return self.name


class TypeAbility(models.Model):
    class Meta:
        ordering = ['tier', 'ability__name']
        verbose_name = 'Type Ability'
        verbose_name_plural = 'Type Abilities'
    tier = models.IntegerField(default=1)
    type = models.ForeignKey(
        Type, blank=False, null=False, on_delete=models.CASCADE)
    ability = models.ForeignKey(Ability, blank=False, null=False,
                                on_delete=models.CASCADE)

    def __str__(self):
        return self.ability.name


class Player(models.Model):
    class Meta:
        ordering = ['name']
        verbose_name = 'Player'
        verbose_name_plural = 'Players'
    name = models.CharField(max_length=100)
    email = models.EmailField(max_length=254, unique=True)
    is_active = models.BooleanField(default=True)
    slug = models.SlugField(default=uuid.uuid4)

    def get_absolute_url(self):
        return "/cyphercore/players/%s/" % self.slug

    def __str__(self):
        return self.name + ' (' + self.email + ')'


class Campaign(models.Model):
    class Meta:
        ordering = ['name']
        verbose_name = 'Campaign'
        verbose_name_plural = 'Campaigns'
    name = models.CharField(max_length=100, unique=False)
    description = models.TextField(blank=True)
    is_active = models.BooleanField(default=True)
    slug = models.SlugField(default=uuid.uuid4)
    gm = models.ForeignKey(Player, verbose_name='GM',
                           on_delete=models.CASCADE)

    def get_absolute_url(self):
        return "/cyphercore/players/campaign/%s/" % self.slug

    def __str__(self):
        return self.name


class Character(models.Model):
    class Meta:
        ordering = ['name']
        verbose_name = 'Character'
        verbose_name_plural = 'Characters'
    name = models.CharField(max_length=100, unique=False)
    portrait_link = models.URLField(max_length=1000, blank=True)
    background = models.TextField(blank=True)
    notes = models.TextField(blank=True)
    tier = models.IntegerField(default=1)
    effort = models.IntegerField(default=1)
    cypher_limit = models.IntegerField(default=2)
    money = models.IntegerField(default=0)
    xp = models.IntegerField(default=0)
    might_current = models.IntegerField(default=10)
    might_pool = models.IntegerField(default=10)
    might_edge = models.IntegerField(default=0)
    speed_current = models.IntegerField(default=10)
    speed_pool = models.IntegerField(default=10)
    speed_edge = models.IntegerField(default=0)
    intellect_current = models.IntegerField(default=10)
    intellect_pool = models.IntegerField(default=10)
    intellect_edge = models.IntegerField(default=0)
    armor = models.IntegerField(default=0)
    recovery_roll = models.IntegerField('Recovery roll 1d6+', default=1)
    impaired = models.BooleanField(default=False)
    debilitated = models.BooleanField(default=False)
    one_action = models.BooleanField(default=False)
    ten_minutes = models.BooleanField(default=False)
    one_hour = models.BooleanField(default=False)
    ten_hours = models.BooleanField(default=False)
    tier_1_edge = models.BooleanField(default=False)
    tier_1_effort = models.BooleanField(default=False)
    tier_1_pools = models.BooleanField(default=False)
    tier_1_skills = models.BooleanField(default=False)
    tier_1_other = models.BooleanField(default=False)
    tier_2_edge = models.BooleanField(default=False)
    tier_2_effort = models.BooleanField(default=False)
    tier_2_pools = models.BooleanField(default=False)
    tier_2_skills = models.BooleanField(default=False)
    tier_2_other = models.BooleanField(default=False)
    tier_3_edge = models.BooleanField(default=False)
    tier_3_effort = models.BooleanField(default=False)
    tier_3_pools = models.BooleanField(default=False)
    tier_3_skills = models.BooleanField(default=False)
    tier_3_other = models.BooleanField(default=False)
    tier_4_edge = models.BooleanField(default=False)
    tier_4_effort = models.BooleanField(default=False)
    tier_4_pools = models.BooleanField(default=False)
    tier_4_skills = models.BooleanField(default=False)
    tier_4_other = models.BooleanField(default=False)
    tier_5_edge = models.BooleanField(default=False)
    tier_5_effort = models.BooleanField(default=False)
    tier_5_pools = models.BooleanField(default=False)
    tier_5_skills = models.BooleanField(default=False)
    tier_5_other = models.BooleanField(default=False)
    tier_6_edge = models.BooleanField(default=False)
    tier_6_effort = models.BooleanField(default=False)
    tier_6_pools = models.BooleanField(default=False)
    tier_6_skills = models.BooleanField(default=False)
    tier_6_other = models.BooleanField(default=False)
    slug = models.SlugField(default=uuid.uuid4)
    player = models.ForeignKey(
        Player, blank=True, null=True, on_delete=models.CASCADE)
    campaign = models.ForeignKey(
        Campaign, blank=True, null=True, on_delete=models.CASCADE)
    descriptor = models.ForeignKey(Descriptor, on_delete=models.PROTECT)
    type = models.ForeignKey(Type, on_delete=models.PROTECT)
    focus = models.ForeignKey(Focus, on_delete=models.PROTECT)
    abilities = models.ManyToManyField(Ability, through='CharacterAbility')
    skills = models.ManyToManyField(Skill, through='CharacterSkill')
    equipment = models.ManyToManyField(
        Equipment, through='CharacterEquipment')
    cyphers = models.ManyToManyField(Cypher, through='CharacterCypher')
    artifacts = models.ManyToManyField(Artifact, through='CharacterArtifact')

    def get_absolute_url(self):
        return "/cyphercore/players/character/%s" % self.slug

    def __str__(self):
        return self.name


class CharacterAbility(models.Model):
    class Meta:
        ordering = ['ability__name']
        verbose_name = 'Ability'
        verbose_name_plural = 'Abilities'
    note = models.CharField(max_length=100, blank=True)
    character = models.ForeignKey(Character, on_delete=models.CASCADE)
    ability = models.ForeignKey(Ability, on_delete=models.CASCADE)

    def __str__(self):
        return self.ability.name


class CharacterArtifact(models.Model):
    class Meta:
        ordering = ['artifact__name']
        verbose_name = 'Artifact'
        verbose_name_plural = 'Artifacts'
    level = models.IntegerField(default=1)
    character = models.ForeignKey(Character, on_delete=models.CASCADE)
    artifact = models.ForeignKey(Artifact, on_delete=models.CASCADE)

    def __str__(self):
        return self.artifact.name


class Attack(models.Model):
    class Meta:
        ordering = ['name']
        verbose_name = 'Attack'
        verbose_name_plural = 'Attacks'
    name = models.CharField(max_length=50)
    modifier = models.IntegerField(default=0)
    damage = models.IntegerField(default=0)
    character = models.ForeignKey(Character, on_delete=models.CASCADE)

    def __str__(self):
        return self.name


class CharacterCypher(models.Model):
    class Meta:
        ordering = ['cypher__name']
        verbose_name = 'Cypher'
        verbose_name_plural = 'Cyphers'
    level = models.IntegerField(default=1)
    appearance = models.TextField(blank=True)
    character = models.ForeignKey(Character, on_delete=models.CASCADE)
    cypher = models.ForeignKey(Cypher, on_delete=models.CASCADE)

    def __str__(self):
        return self.cypher.name


class CharacterEquipment(models.Model):
    class Meta:
        ordering = ['equipment__name']
        verbose_name = 'Equipment'
        verbose_name_plural = 'Equipment'
    brief_note = models.CharField(max_length=50, blank=True)
    character = models.ForeignKey(Character, on_delete=models.CASCADE)
    equipment = models.ForeignKey(Equipment, on_delete=models.CASCADE)
    quantity = models.IntegerField(default=1)

    def __str__(self):
        return self.equipment.name


class CharacterSkill(models.Model):
    class Meta:
        ordering = ['-skill_level', 'skill__name']
        verbose_name = 'Skill'
        verbose_name_plural = 'Skills'
    TRAINED = 'T'
    SPECIALIZED = 'S'
    INABILITY = 'I'
    SKILL_LEVEL_CHOICES = (
        (TRAINED, 'Trained'),
        (SPECIALIZED, 'Specialized'),
        (INABILITY, 'Inability'),
    )
    skill_level = models.CharField(
        max_length=1,
        choices=SKILL_LEVEL_CHOICES,
        default=TRAINED
    )
    character = models.ForeignKey(Character, on_delete=models.CASCADE)
    skill = models.ForeignKey(Skill, on_delete=models.CASCADE)

    def __str__(self):
        return self.skill.name


class Creature(models.Model):
    class Meta:
        ordering = ['name']
        verbose_name = 'Creature'
        verbose_name_plural = 'Creatures'
    name = models.CharField(max_length=100, unique=True)
    slug = models.SlugField(max_length=100, unique=True)
    portrait_link = models.URLField(max_length=1000, blank=True)
    level = models.IntegerField(default=1)
    health = models.IntegerField(default=3)
    damage_inflicted = models.CharField(max_length=50)
    armor = models.IntegerField(default=0)
    motive = models.CharField(max_length=500)
    environment = models.CharField(max_length=500)
    movement = models.CharField(max_length=500)
    description = models.TextField()
    modifications = models.TextField(blank=True)
    combat = models.TextField(blank=True)
    interaction = models.TextField(blank=True)
    use = models.TextField(blank=True)
    loot = models.TextField(blank=True)
    gm_intrusion = models.TextField('GM intrusion', blank=True)
    sourcebook = models.ForeignKey(
        Sourcebook, default=1, on_delete=models.PROTECT)

    def truncated_description(self):
        return truncate_to(truncate_length, self.description)
    truncated_description.short_description = 'Description'

    def target(self):
        return self.level * 3

    def get_absolute_url(self):
        return "/cyphercore/creatures/%s/" % self.slug

    def __str__(self):
        return self.name
