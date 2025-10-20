/*
* machined shot for the tiziran gauss rifle
*/

/obj/item/ammo_casing/bolt_slug
	name = "machined slug"
	desc = "A solid lathe turned slug of ferrous alloy, ready to be shunted through a hot coil wrap and deep into something or \
	someone unfortunate.""
	icon = 'modular_doppler/modular_weapons/icons/obj/casings.dmi'
	icon_state = "machined_bolt"
	caliber = CALIBER_BOLT_THROWER
	projectile_type = /obj/projectile/bullet/bolt_slug

/obj/item/ammo_casing/strilka310/Initialize(mapload)
	. = ..()
	AddElement(/datum/element/caseless)

/obj/projectile/bullet/bolt_slug
	name = "machined slug"
	icon = 'modular_doppler/modular_weapons/icons/projectiles.dmi'
	icon_state = "yellowtrac"
	damage = 50
	armour_penetration = 20
	wound_bonus = -45
	wound_falloff_tile = 0

/obj/item/ammo_casing/bolt_slug/scattershot
	name = "machined grapeshot"
	desc = "A fistful of ferrous roundshot wrapped in a paper sleeve. The sleeve readily burns off from the heat of acceleration, leaving \
	the shot free to spread and brutalize exposed tissue."
	icon_state = "machined_grapeshot"
	projectile_type = /obj/projectile/bullet/pellet/machined_grapeshot
	pellets = 9
	weak_against_armour = TRUE

/obj/projectile/bullet/pellet/machined_grapeshot
	name = "machined grapeshot"
	icon = 'modular_doppler/modular_weapons/icons/projectiles.dmi'
	icon_state = "shortyellowtrac"
	damage = 5
	wound_bonus = 5
	exposed_wound_bonus = 5
	speed = 1.1
	wound_falloff_tile = -0.5 //We would very much like this to cause wounds despite the low damage, so the drop off is relatively slow
	sharpness = SHARP_EDGED
