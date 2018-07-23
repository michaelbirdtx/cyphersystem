from django.db import models

truncate_length = 80

def truncate_to(length, data):
    return (data[:length - 3] + '...') if len(data) > length else data

# Create your models here.

class Sourcebook(models.Model):
    class Meta:
        ordering = ['name']
    name = models.CharField('sourcebook', max_length=100, unique=True)
    enabled = models.BooleanField(default=True)
    def __str__(self):
        return self.name

class Genre(models.Model):
    class Meta:
        ordering = ['name']
    name = models.CharField('genre', max_length=50, unique=True)
    sourcebook = models.ForeignKey(Sourcebook, default=1, on_delete=models.PROTECT)
    def __str__(self):
        return self.name

class Descriptor(models.Model):
    class Meta:
        ordering = ['name']
    name = models.CharField('descriptor name', max_length=50, unique=True)
    prefix = models.CharField(max_length=5, default='a')
    description = models.TextField(blank=True)
    characteristics = models.TextField(blank=True)
    starting_link = models.TextField(blank=True)
    slug = models.SlugField(max_length=50)
    sourcebook = models.ForeignKey(Sourcebook, default=1, on_delete=models.PROTECT)
    def truncated_description(self):
        return truncate_to(truncate_length, self.description)
    truncated_description.short_description = 'Short Description'
    def __str__(self):
        return self.name

class Ability(models.Model):
    class Meta:
        ordering = ['name']
        verbose_name_plural = 'Abilities'
    name = models.CharField(max_length=50,unique=True)
    ABILITY_USAGE_CHOICES = (
        ('Action', 'Action'),
        ('Enabler', 'Enabler'),
        ('Special', 'Special'),
    )
    usage = models.CharField(
            max_length=10,
            choices = ABILITY_USAGE_CHOICES,
            default='Action')
    cost = models.CharField(default='-',max_length=20)
    description = models.TextField(blank=True)
    slug = models.SlugField(max_length=50)
    sourcebook = models.ForeignKey(Sourcebook, default=1, on_delete=models.PROTECT)
    def truncated_description(self):
        return truncate_to(truncate_length, self.description)
    truncated_description.short_description = 'Short Description'
    def __str__(self):
        return self.name

class Type(models.Model):
    class Meta:
        ordering = ['name']
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
    sourcebook = models.ForeignKey(Sourcebook, default=1, on_delete=models.PROTECT)
    abilities = models.ManyToManyField(Ability, through='TypeAbility')
    def truncated_description(self):
        return truncate_to(truncate_length, self.description)
    truncated_description.short_description = 'Short Description'
    def __str__(self):
        return self.name

class TypeAbility(models.Model):
    class Meta:
        ordering = ['tier', 'ability__name']
        verbose_name_plural = 'Type Abilities'
    type = models.ForeignKey(Type, on_delete=models.CASCADE)
    ability = models.ForeignKey(Ability, on_delete=models.CASCADE)
    tier = models.IntegerField(default=1)
    def __str__(self):
        return self.ability.name

class Focus(models.Model):
    class Meta:
        ordering = ['name']
        verbose_name_plural = 'Foci'
    name = models.CharField(max_length=50, unique=True)
    description = models.TextField(blank=True)
    connections = models.TextField(blank=True)
    other_details = models.TextField(blank=True)
    slug = models.SlugField(max_length=50)
    sourcebook = models.ForeignKey(Sourcebook, default=1, on_delete=models.PROTECT)
    abilities = models.ManyToManyField(Ability, through='FocusAbility')
    def truncated_description(self):
        return truncate_to(truncate_length, self.description)
    truncated_description.short_description = 'Short Description'
    def __str__(self):
        return self.name

class FocusAbility(models.Model):
    class Meta:
        ordering = ['tier', 'ability__name']
        verbose_name_plural = 'Focus Abilities'
    focus = models.ForeignKey(Focus, on_delete=models.CASCADE)
    ability = models.ForeignKey(Ability, on_delete=models.CASCADE)
    tier = models.IntegerField(default=1)
    def __str__(self):
        return self.ability.name

class Skill(models.Model):
    class Meta:
        ordering = ['name']
    name = models.CharField(max_length=100, unique=True)
    def __str__(self):
        return self.name

class Equipment(models.Model):
    class Meta:
        ordering = ['name']
        verbose_name_plural = 'Equipment'
    name = models.CharField(max_length=50,unique=False)
    genre = models.ForeignKey(Genre, default=1, on_delete=models.PROTECT)
    type = models.CharField(max_length=30)
    base_cost = models.CharField(blank=True, max_length=30)
    notes = models.TextField(blank=True)
    slug = models.SlugField(max_length=50)
    sourcebook = models.ForeignKey(Sourcebook, default=1, on_delete=models.PROTECT)
    def truncated_notes(self):
        return truncate_to(truncate_length, self.notes)
    truncated_notes.short_description = 'Notes'
    def __str__(self):
        return self.name

class Cypher(models.Model):
    class Meta:
        ordering = ['name']
    name = models.CharField(max_length=50,unique=True)
    level_range = models.CharField(max_length=10)
    effect = models.TextField()
    slug = models.SlugField(max_length=50)
    sourcebook = models.ForeignKey(Sourcebook, default=1, on_delete=models.PROTECT)
    def truncated_effect(self):
        return truncate_to(truncate_length, self.effect)
    truncated_effect.short_description = 'Effect'
    def __str__(self):
        return self.name

class Artifact(models.Model):
    class Meta:
        ordering = ['name']
    name = models.CharField(max_length=50,unique=True)
    genre = models.ForeignKey(Genre, default=1, on_delete=models.PROTECT)
    level_range = models.CharField(max_length=10)
    form = models.TextField()
    effect = models.TextField()
    depletion = models.CharField(max_length=20)
    slug = models.SlugField(max_length=50)
    sourcebook = models.ForeignKey(Sourcebook, default=1, on_delete=models.PROTECT)
    def truncated_form(self):
        return truncate_to(truncate_length, self.form)
    truncated_form.short_description = 'Form'
    def truncated_effect(self):
        return truncate_to(truncate_length, self.effect)
    truncated_effect.short_description = 'Effect'
    def __str__(self):
        return self.name

class Character(models.Model):
    class Meta:
        ordering = ['name']
    name = models.CharField(max_length=100,unique=True)
    descriptor = models.ForeignKey(Descriptor, on_delete=models.PROTECT)
    type = models.ForeignKey(Type, on_delete=models.PROTECT)
    focus = models.ForeignKey(Focus, on_delete=models.PROTECT)
    genre = models.ForeignKey(Genre, default=1, on_delete=models.PROTECT)
    portrait_link = models.URLField(max_length=200,blank=True)
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
    abilities = models.ManyToManyField(Ability)
    skills = models.ManyToManyField(Skill, through='CharacterSkill')
    equipment = models.ManyToManyField(Equipment, through='CharacterEquipment')
    cyphers = models.ManyToManyField(Cypher, through='CharacterCypher')
    artifacts = models.ManyToManyField(Artifact, through='CharacterArtifact')
    slug = models.SlugField(max_length=100)
    def __str__(self):
        return self.name

class CharacterSkill(models.Model):
    class Meta:
        ordering = ['-skill_level', 'skill__name']
        verbose_name_plural = 'Skills'
    character = models.ForeignKey(Character, on_delete=models.CASCADE)
    skill = models.ForeignKey(Skill, on_delete=models.CASCADE)
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

class CharacterEquipment(models.Model):
    class Meta:
        ordering = ['equipment__name']
        verbose_name_plural = 'Equipment'
    character = models.ForeignKey(Character, on_delete=models.CASCADE)
    equipment = models.ForeignKey(Equipment, on_delete=models.CASCADE)
    quantity = models.IntegerField(default=1)
    def __str__(self):
        return self.equipment.name

class CharacterCypher(models.Model):
    class Meta:
        ordering = ['cypher__name']
        verbose_name_plural = 'Cyphers'
    character = models.ForeignKey(Character, on_delete=models.CASCADE)
    cypher = models.ForeignKey(Cypher, on_delete=models.CASCADE)
    level = models.IntegerField(default=1)
    appearance = models.TextField()
    def __str__(self):
        return self.cypher.name

class CharacterArtifact(models.Model):
    class Meta:
        ordering = ['artifact__name']
        verbose_name_plural = 'Artifacts'
    character = models.ForeignKey(Character, on_delete=models.CASCADE)
    artifact = models.ForeignKey(Artifact, on_delete=models.CASCADE)
    level = models.IntegerField(default=1)
    def __str__(self):
        return self.artifact.name
