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
    abilities = models.ManyToManyField(Ability, through='CharacterAbility')
    skills = models.ManyToManyField(Skill, through='CharacterSkill')
    equipment = models.ManyToManyField(Equipment, through='CharacterEquipment')
    cyphers = models.ManyToManyField(Cypher, through='CharacterCypher')
    artifacts = models.ManyToManyField(Artifact, through='CharacterArtifact')
    def get_absolute_url(self):
        return "/numenera/characters/%s/" % self.slug

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

class Oddity(models.Model):
    class Meta:
        ordering = ['description']
        verbose_name = 'Oddity'
        verbose_name_plural = 'Oddities'
    character = models.ForeignKey(Character, on_delete=models.CASCADE)
    description = models.TextField()
    def __str__(self):
        return self.description

class CharacterSkill(baseCharacterSkill):
    character = models.ForeignKey(Character, on_delete=models.CASCADE)
    skill = models.ForeignKey(Skill, on_delete=models.CASCADE)
