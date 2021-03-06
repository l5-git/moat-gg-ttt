
TALENT.ID = 102
TALENT.Name = "Power Stone"
TALENT.NameColor = Color(128,0,128)
TALENT.Description = "Each shot has a %s_^ chance to deal double damage"
TALENT.Tier = 3
TALENT.LevelRequired = {min = 25, max = 30}

TALENT.Modifications = {}
TALENT.Modifications[1] = {min = 1, max = 5}	-- Chance to trigger

TALENT.Melee = true
TALENT.NotUnique = false

function TALENT:OnPlayerHit(victim, attacker, dmginfo, talent_mods)
	local chance = self.Modifications[1].min + ( ( self.Modifications[1].max - self.Modifications[1].min ) * math.min(1, talent_mods[1]) )
	if (chance > math.random() * 100) then
		dmginfo:ScaleDamage(2)
	end
end