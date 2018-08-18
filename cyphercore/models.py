from django.db import models

truncate_length = 80

def truncate_to(length, data):
    return (data[:length - 3] + '...') if len(data) > length else data

# Base models

class baseAbility(models.Model):
    class Meta:
        abstract = True
        ordering = ['name']
        verbose_name = 'Ability'
        verbose_name_plural = 'Abilities'
    name = models.CharField(max_length=50,unique=True)
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
            choices = ABILITY_USAGE_CHOICES,
            default='Action')
    cost = models.CharField(blank=False,default='-',max_length=30)
    description = models.TextField(blank=True)
    slug = models.SlugField(max_length=50)
    #sourcebook = models.ForeignKey(Sourcebook, default=1, on_delete=models.PROTECT)
    def truncated_description(self):
        return truncate_to(truncate_length, self.description)
    truncated_description.short_description = 'Short Description'
    def __str__(self):
        return self.name

class baseArtifact(models.Model):
    class Meta:
        abstract = True
        ordering = ['name']
        verbose_name = 'Artifact'
        verbose_name_plural = 'Artifacts'
    name = models.CharField(max_length=50,unique=True)
    level_range = models.CharField(max_length=10)
    form = models.TextField()
    effect = models.TextField()
    depletion = models.CharField(blank=False,default='-',max_length=20)
    slug = models.SlugField(max_length=50)
    #sourcebook = models.ForeignKey(Sourcebook, default=1, on_delete=models.PROTECT)
    def truncated_form(self):
        return truncate_to(truncate_length, self.form)
    truncated_form.short_description = 'Form'
    def truncated_effect(self):
        return truncate_to(truncate_length, self.effect)
    truncated_effect.short_description = 'Effect'
    def __str__(self):
        return self.name

class baseAttack(models.Model):
    class Meta:
        abstract = True
        ordering = ['name']
        verbose_name = 'Attack'
        verbose_name_plural = 'Attacks'
    #character = models.ForeignKey(Character, on_delete=models.CASCADE)
    name = models.CharField(max_length=50)
    modifier = models.IntegerField(default=0)
    damage = models.IntegerField(default=0)

class baseCharacter(models.Model):
    class Meta:
        abstract = True
        ordering = ['name']
        verbose_name = 'Character'
        verbose_name_plural = 'Characters'
    name = models.CharField(max_length=100,unique=True)
    #descriptor = models.ForeignKey(Descriptor, on_delete=models.PROTECT)
    #type = models.ForeignKey(Type, on_delete=models.PROTECT)
    #focus = models.ForeignKey(Focus, on_delete=models.PROTECT)
    portrait_link = models.URLField(max_length=1000,blank=True)
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
    #abilities = models.ManyToManyField(Ability, through='CharacterAbility')
    #skills = models.ManyToManyField(Skill, through='CharacterSkill')
    #equipment = models.ManyToManyField(Equipment, through='CharacterEquipment')
    #cyphers = models.ManyToManyField(Cypher, through='CharacterCypher')
    #artifacts = models.ManyToManyField(Artifact, through='CharacterArtifact')
    slug = models.SlugField(max_length=100)
    def __str__(self):
        return self.name

class baseCharacterAbility(models.Model):
    class Meta:
        abstract = True
        ordering = ['ability__name']
        verbose_name = 'Ability'
        verbose_name_plural = 'Abilities'
    #character = models.ForeignKey(Character, on_delete=models.CASCADE)
    #equipment = models.ForeignKey(Equipment, on_delete=models.CASCADE)
    note = models.TextField(blank=True)
    def __str__(self):
        return self.ability.name

class baseCharacterArtifact(models.Model):
    class Meta:
        abstract = True
        ordering = ['artifact__name']
        verbose_name = 'Artifact'
        verbose_name_plural = 'Artifacts'
    #character = models.ForeignKey(Character, on_delete=models.CASCADE)
    #artifact = models.ForeignKey(Artifact, on_delete=models.CASCADE)
    level = models.IntegerField(default=1)
    def __str__(self):
        return self.artifact.name

class baseCharacterCypher(models.Model):
    class Meta:
        abstract = True
        ordering = ['cypher__name']
        verbose_name = 'Cypher'
        verbose_name_plural = 'Cyphers'
    #character = models.ForeignKey(Character, on_delete=models.CASCADE)
    #cypher = models.ForeignKey(Cypher, on_delete=models.CASCADE)
    level = models.IntegerField(default=1)
    appearance = models.TextField(blank=True)
    def __str__(self):
        return self.cypher.name

class baseCharacterEquipment(models.Model):
    class Meta:
        abstract = True
        ordering = ['equipment__name']
        verbose_name = 'Equipment'
        verbose_name_plural = 'Equipment'
    #character = models.ForeignKey(Character, on_delete=models.CASCADE)
    #equipment = models.ForeignKey(Equipment, on_delete=models.CASCADE)
    #quantity = models.IntegerField(default=1)
    brief_note = models.CharField(max_length=50, blank=True)
    def __str__(self):
        return self.equipment.name

class baseCharacterSkill(models.Model):
    class Meta:
        abstract = True
        ordering = ['-skill_level', 'skill__name']
        verbose_name = 'Skill'
        verbose_name_plural = 'Skills'
    #character = models.ForeignKey(Character, on_delete=models.CASCADE)
    #skill = models.ForeignKey(Skill, on_delete=models.CASCADE)
    TRAINED = 'T'
    SPECIALIZED = 'S'
    INABILITY = 'I'
    SKILL_LEVEL_CHOICES = (
        (TRAINED, 'Trained'),
        (SPECIALIZED, 'Specialized'),
        (INABILITY, 'Inability'),
    )
    skill_level = models.CharField(max_length=1,choices=SKILL_LEVEL_CHOICES,default=TRAINED)
    def __str__(self):
        return self.skill.name

class baseCypher(models.Model):
    class Meta:
        abstract = True
        ordering = ['name']
        verbose_name = 'Cypher'
        verbose_name_plural = 'Cyphers'
    name = models.CharField(max_length=50,unique=True)
    level_range = models.CharField(max_length=10)
    effect = models.TextField()
    slug = models.SlugField(max_length=50)
    #sourcebook = models.ForeignKey(Sourcebook, default=1, on_delete=models.PROTECT)
    def truncated_effect(self):
        return truncate_to(truncate_length, self.effect)
    truncated_effect.short_description = 'Effect'
    def __str__(self):
        return self.name

class baseDescriptor(models.Model):
    class Meta:
        abstract = True
        ordering = ['name']
        verbose_name = 'Descriptor'
        verbose_name_plural = 'Descriptors'
    name = models.CharField('descriptor name', max_length=50, unique=True)
    prefix = models.CharField(max_length=5, default='a')
    description = models.TextField(blank=True)
    characteristics = models.TextField(blank=True)
    starting_link = models.TextField(blank=True)
    slug = models.SlugField(max_length=50)
    #sourcebook = models.ForeignKey(Sourcebook, default=1, on_delete=models.PROTECT)
    def truncated_description(self):
        return truncate_to(truncate_length, self.description)
    truncated_description.short_description = 'Short Description'
    def __str__(self):
        return self.name

class baseEquipment(models.Model):
    class Meta:
        abstract = True
        ordering = ['name']
        verbose_name_plural = 'Equipment'
        verbose_name = 'Equipment'
    name = models.CharField(max_length=50,unique=True)
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
    type = models.CharField(max_length=30,choices=EQUIPMENT_TYPE_CHOICES)
    base_cost = models.CharField(blank=True, max_length=30)
    notes = models.TextField(blank=True)
    slug = models.SlugField(max_length=50)
    #sourcebook = models.ForeignKey(Sourcebook, default=1, on_delete=models.PROTECT)
    def truncated_notes(self):
        return truncate_to(truncate_length, self.notes)
    truncated_notes.short_description = 'Notes'
    def __str__(self):
        return self.name

class baseFocus(models.Model):
    class Meta:
        abstract = True
        ordering = ['name']
        verbose_name = 'Focus'
        verbose_name_plural = 'Foci'
    name = models.CharField(max_length=50, unique=True)
    description = models.TextField(blank=True)
    connections = models.TextField(blank=True)
    other_details = models.TextField(blank=True)
    slug = models.SlugField(max_length=50)
    #sourcebook = models.ForeignKey(Sourcebook, default=1, on_delete=models.PROTECT)
    #abilities = models.ManyToManyField(Ability, through='FocusAbility')
    def truncated_description(self):
        return truncate_to(truncate_length, self.description)
    truncated_description.short_description = 'Short Description'
    def __str__(self):
        return self.name

class baseFocusAbility(models.Model):
    class Meta:
        abstract = True
        ordering = ['tier', 'ability__name']
        verbose_name = 'Focus Ability'
        verbose_name_plural = 'Focus Abilities'
    #focus = models.ForeignKey(Focus, on_delete=models.CASCADE)
    #ability = models.ForeignKey(Ability, on_delete=models.CASCADE)
    tier = models.IntegerField(default=1)
    def __str__(self):
        return self.ability.name

class baseSkill(models.Model):
    class Meta:
        abstract = True
        ordering = ['name']
        verbose_name = 'Skill'
        verbose_name_plural = 'Skills'
    name = models.CharField(max_length=100, unique=True)
    def __str__(self):
        return self.name

class baseSourcebook(models.Model):
    class Meta:
        abstract = True
        ordering = ['name']
        verbose_name = 'Sourcebook'
        verbose_name_plural = 'Sourcebooks'
    name = models.CharField('sourcebook', max_length=100, unique=True)
    #enabled = models.BooleanField(default=True)
    def __str__(self):
        return self.name

class baseType(models.Model):
    class Meta:
        abstract = True
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
    #sourcebook = models.ForeignKey(Sourcebook, default=1, on_delete=models.PROTECT)
    #abilities = models.ManyToManyField(Ability, through='TypeAbility')
    def truncated_description(self):
        return truncate_to(truncate_length, self.description)
    truncated_description.short_description = 'Short Description'
    def __str__(self):
        return self.name

class baseTypeAbility(models.Model):
    class Meta:
        abstract = True
        ordering = ['tier', 'ability__name']
        verbose_name = 'Type Ability'
        verbose_name_plural = 'Type Abilities'
    #type = models.ForeignKey(Type, on_delete=models.CASCADE)
    #ability = models.ForeignKey(Ability, on_delete=models.CASCADE)
    tier = models.IntegerField(default=1)
    def __str__(self):
        return self.ability.name

# Inherited models

class Sourcebook(baseSourcebook):
    pass

class Ability(baseAbility):
    sourcebook = models.ForeignKey(Sourcebook, default=1, on_delete=models.PROTECT)

class Artifact(baseArtifact):
    sourcebook = models.ForeignKey(Sourcebook, default=1, on_delete=models.PROTECT)

class Cypher(baseCypher):
    sourcebook = models.ForeignKey(Sourcebook, default=1, on_delete=models.PROTECT)

class Descriptor(baseDescriptor):
    sourcebook = models.ForeignKey(Sourcebook, default=1, on_delete=models.PROTECT)

class Equipment(baseEquipment):
    sourcebook = models.ForeignKey(Sourcebook, default=1, on_delete=models.PROTECT)

class Focus(baseFocus):
    sourcebook = models.ForeignKey(Sourcebook, default=1, on_delete=models.PROTECT)
    abilities = models.ManyToManyField(Ability, through='FocusAbility')

class FocusAbility(baseFocusAbility):
    focus = models.ForeignKey(Focus, on_delete=models.CASCADE)
    ability = models.ForeignKey(Ability, on_delete=models.CASCADE)

class Skill(baseSkill):
    pass

class Type(baseType):
    sourcebook = models.ForeignKey(Sourcebook, default=1, on_delete=models.PROTECT)
    abilities = models.ManyToManyField(Ability, through='TypeAbility')

class TypeAbility(baseTypeAbility):
    type = models.ForeignKey(Type, on_delete=models.CASCADE)
    ability = models.ForeignKey(Ability, on_delete=models.CASCADE)

class Character(baseCharacter):
    descriptor = models.ForeignKey(Descriptor, on_delete=models.PROTECT)
    type = models.ForeignKey(Type, on_delete=models.PROTECT)
    focus = models.ForeignKey(Focus, on_delete=models.PROTECT)
    #abilities = models.ManyToManyField(Ability, blank=True)
    abilities = models.ManyToManyField(Ability, through='CharacterAbility')
    skills = models.ManyToManyField(Skill, through='CharacterSkill')
    equipment = models.ManyToManyField(Equipment, through='CharacterEquipment')
    cyphers = models.ManyToManyField(Cypher, through='CharacterCypher')
    artifacts = models.ManyToManyField(Artifact, through='CharacterArtifact')

class CharacterAbility(baseCharacterAbility):
    character = models.ForeignKey(Character, on_delete=models.CASCADE)
    ability = models.ForeignKey(Ability, on_delete=models.CASCADE)

class CharacterArtifact(baseCharacterArtifact):
    character = models.ForeignKey(Character, on_delete=models.CASCADE)
    artifact = models.ForeignKey(Artifact, on_delete=models.CASCADE)

class Attack(baseAttack):
    character = models.ForeignKey(Character, on_delete=models.CASCADE)

class CharacterCypher(baseCharacterCypher):
    character = models.ForeignKey(Character, on_delete=models.CASCADE)
    cypher = models.ForeignKey(Cypher, on_delete=models.CASCADE)

class CharacterEquipment(baseCharacterEquipment):
    character = models.ForeignKey(Character, on_delete=models.CASCADE)
    equipment = models.ForeignKey(Equipment, on_delete=models.CASCADE)
    quantity = models.IntegerField(default=1)

class CharacterSkill(baseCharacterSkill):
    character = models.ForeignKey(Character, on_delete=models.CASCADE)
    skill = models.ForeignKey(Skill, on_delete=models.CASCADE)
