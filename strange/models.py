from django.db import models
from cyphercore.models import baseSourcebook, baseAbility, baseArtifact, baseCypher, baseDescriptor, baseEquipment, baseFocus, baseFocusAbility, baseSkill, baseType, baseTypeAbility, baseCharacter, baseCharacterAbility, baseCharacterArtifact, baseAttack, baseCharacterCypher, baseCharacterEquipment, baseCharacterSkill

# Inherited models

class Sourcebook(baseSourcebook):
    pass

class Ability(baseAbility):
    sourcebook = models.ForeignKey(Sourcebook, default=1, on_delete=models.PROTECT)

class Artifact(baseArtifact):
    sourcebook = models.ForeignKey(Sourcebook, default=1, on_delete=models.PROTECT)

class Cypher(baseCypher):
    form = models.TextField(blank=True)
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
    abilities = models.ManyToManyField(Ability, through='CharacterAbility')
    skills = models.ManyToManyField(Skill, through='CharacterSkill')
    cyphers = models.ManyToManyField(Cypher, through='CharacterCypher')

class CharacterAbility(baseCharacterAbility):
    class Meta:
        ordering = ['ability__name']
        verbose_name = 'Global Ability'
        verbose_name_plural = 'Global Abilities'
    character = models.ForeignKey(Character, on_delete=models.CASCADE)
    ability = models.ForeignKey(Ability, on_delete=models.CASCADE)

class Recursion(models.Model):
    class Meta:
        ordering = ['character', 'name']
        unique_together = ('character', 'name')
        verbose_name = 'Recursion'
        verbose_name_plural = 'Recursions'
    character = models.ForeignKey(Character, on_delete=models.CASCADE)
    name = models.CharField(max_length=100)
    armor = models.IntegerField(default=0)
    money = models.IntegerField(default=0)
    focus = models.ForeignKey(Focus, on_delete=models.PROTECT)
    might_pool_adjust = models.IntegerField(default=0)
    might_edge_adjust = models.IntegerField(default=0)
    speed_pool_adjust = models.IntegerField(default=0)
    speed_edge_adjust = models.IntegerField(default=0)
    intellect_pool_adjust = models.IntegerField(default=0)
    intellect_edge_adjust = models.IntegerField(default=0)
    abilities = models.ManyToManyField(Ability, through='RecursionAbility')
    equipment = models.ManyToManyField(Equipment, through='CharacterEquipment')
    skills = models.ManyToManyField(Skill, through='RecursionSkill')
    notes = models.TextField(blank=True)
    def __str__(self):
        return self.name

class RecursionAbility(baseCharacterAbility):
    recursion = models.ForeignKey(Recursion, on_delete=models.CASCADE)
    ability = models.ForeignKey(Ability, on_delete=models.CASCADE)

class CharacterArtifact(baseCharacterArtifact):
    class Meta:
        ordering = ['artifact__name']
        verbose_name = 'Artifact'
        verbose_name_plural = 'Artifacts'
    recursion = models.ForeignKey(Recursion, on_delete=models.CASCADE)
    artifact = models.ForeignKey(Artifact, on_delete=models.CASCADE)

class Attack(baseAttack):
    class Meta:
        ordering = ['recursion__name', 'name']
    recursion = models.ForeignKey(Recursion, on_delete=models.CASCADE)

class CharacterCypher(baseCharacterCypher):
    character = models.ForeignKey(Character, on_delete=models.CASCADE)
    cypher = models.ForeignKey(Cypher, on_delete=models.CASCADE)

class CharacterEquipment(baseCharacterEquipment):
    class Meta:
        ordering = ['recursion__name', 'equipment__name']
        verbose_name = 'Equipment'
        verbose_name_plural = 'Equipment'
    recursion = models.ForeignKey(Recursion, on_delete=models.CASCADE)
    equipment = models.ForeignKey(Equipment, on_delete=models.CASCADE)
    quantity = models.IntegerField(default=1)

class CharacterSkill(baseCharacterSkill):
    class Meta:
        ordering = ['-skill_level']
        verbose_name = 'Global Skill'
        verbose_name_plural = 'Global Skills'
    character = models.ForeignKey(Character, on_delete=models.CASCADE)
    skill = models.ForeignKey(Skill, on_delete=models.CASCADE)

class RecursionSkill(baseCharacterSkill):
    class Meta:
        ordering = ['-skill_level']
        verbose_name = 'Skill'
        verbose_name_plural = 'Skills'
    recursion = models.ForeignKey(Recursion, on_delete=models.CASCADE)
    skill = models.ForeignKey(Skill, on_delete=models.CASCADE)
