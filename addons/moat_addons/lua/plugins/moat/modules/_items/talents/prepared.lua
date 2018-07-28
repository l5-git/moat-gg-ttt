
TALENT.ID = 14

TALENT.Name = 'Prepared'

TALENT.NameColor = Color(41, 171, 135)

TALENT.Description = 'Damage is increased by %s_^ when more than %s feet from the target'

TALENT.Tier = 2

TALENT.LevelRequired = {min = 15, max = 20}

TALENT.Modifications = {}

TALENT.Modifications[1] = {min = 5, max = 10} -- Percent of damage increased by range

TALENT.Modifications[2] = {min = 25, max = 40} -- Feet Difference

TALENT.Melee = false

TALENT.NotUnique = true

function TALENT:OnPlayerHit(victim, attacker, dmginfo, talent_mods)
	local increase = self.Modifications[1].min + ((self.Modifications[1].max - self.Modifications[1].min) * talent_mods[1])
	local range = self.Modifications[2].min + ((self.Modifications[2].max - self.Modifications[2].min) * talent_mods[2])

	if (victim:GetPos():Distance(attacker:GetPos()) >= (range * 30)) then
		local damageIncrease = (self.Modifications[1].min + ((self.Modifications[1].max - self.Modifications[1].min) * talent_mods[1])) / 100
		local damageToAdd = dmginfo:GetDamage() * damageIncrease
		dmginfo:ScaleDamage(1 + damageIncrease)
	end
end
