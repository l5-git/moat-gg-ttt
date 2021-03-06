
ITEM.ID = 2097

ITEM.Name = "Balloonicorn"

ITEM.Description = "Hey look, you finally have a friend now"

ITEM.Model = "models/gmod_tower/balloonicorn_nojiggle.mdl"

ITEM.Rarity = 8

ITEM.Collection = "Independence Collection"

ITEM.Attachment = "eyes" // left trapezius

function ITEM:ModifyClientsideModel( ply, model, pos, ang )

	model:SetModelScale(0.3, 0)
	pos = pos + (ang:Forward() * -1.2) + (ang:Right() * -20) + m_IsTerroristModel( ply:GetModel() )
	ang:RotateAroundAxis(ang:Forward(), 90)
	ang:RotateAroundAxis(ang:Right(), -90)

	return model, pos, ang

end

