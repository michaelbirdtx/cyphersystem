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
    name = models.CharField(max_length=50)
    level_range = models.CharField(max_length=10)
    effect = models.TextField()
    slug = models.SlugField(max_length=50)
    sourcebook = models.ForeignKey(Sourcebook, default=1, on_delete=models.PROTECT)
    def truncated_effect(self):
        return truncate_to(truncate_length, self.effect)
    truncated_effect.short_description = 'Effect'
    def __str__(self):
        return self.name
