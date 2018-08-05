from django.db import models
from cyphercore.models import baseSourcebook, baseAbility, baseArtifact, baseCypher, baseDescriptor, baseEquipment, baseFocus, baseFocusAbility, baseSkill, baseType, baseTypeAbility, baseCharacter, baseCharacterArtifact, baseAttack, baseCharacterCypher, baseCharacterEquipment, baseCharacterSkill

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
    abilities = models.ManyToManyField(Ability, blank=True)
    skills = models.ManyToManyField(Skill, through='CharacterSkill')
    cyphers = models.ManyToManyField(Cypher, through='CharacterCypher')

class Recursion(models.Model):
    class Meta:
        ordering = ['name']
        unique_together = ('character', 'name')
        verbose_name = 'Character Recursion'
        verbose_name_plural = 'Character Recursions'
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
    abilities = models.ManyToManyField(Ability)
    #skills = models.ManyToManyField(Skill, through='CharacterSkill')
    #equipment = models.ManyToManyField(Equipment, through='CharacterEquipment')
    #artifacts = models.ManyToManyField(Artifact, through='CharacterArtifact')
    def __str__(self):
        return self.name

class CharacterArtifact(baseCharacterArtifact):
    class Meta:
        ordering = ['recursion__name', 'artifact__name']
        verbose_name = 'Artifact'
        verbose_name_plural = 'Artifacts'
    character = models.ForeignKey(Character, on_delete=models.CASCADE)
    artifact = models.ForeignKey(Artifact, on_delete=models.CASCADE)
    recursion = models.ForeignKey(Recursion, blank=True, null=True, on_delete=models.CASCADE)

class Attack(baseAttack):
    class Meta:
        ordering = ['recursion__name', 'name']
    character = models.ForeignKey(Character, on_delete=models.CASCADE)
    recursion = models.ForeignKey(Recursion, blank=True, null=True, on_delete=models.CASCADE)

class CharacterCypher(baseCharacterCypher):
    character = models.ForeignKey(Character, on_delete=models.CASCADE)
    cypher = models.ForeignKey(Cypher, on_delete=models.CASCADE)

class CharacterEquipment(baseCharacterEquipment):
    class Meta:
        ordering = ['recursion__name', 'equipment__name']
        verbose_name = 'Equipment'
        verbose_name_plural = 'Equipment'
    character = models.ForeignKey(Character, on_delete=models.CASCADE)
    equipment = models.ForeignKey(Equipment, on_delete=models.CASCADE)
    quantity = models.IntegerField(default=1)
    recursion = models.ForeignKey(Recursion, blank=True, null=True, on_delete=models.CASCADE)

class CharacterSkill(baseCharacterSkill):
    class Meta:
        ordering = ['recursion__name', '-skill_level']
        verbose_name = 'Skill'
        verbose_name_plural = 'Skills'
    character = models.ForeignKey(Character, on_delete=models.CASCADE)
    skill = models.ForeignKey(Skill, on_delete=models.CASCADE)
    recursion = models.ForeignKey(Recursion, blank=True, null=True, on_delete=models.CASCADE)
