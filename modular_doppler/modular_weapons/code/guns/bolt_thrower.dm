/*
* a tiziran bolt action gauss rifle that accelerates steel shot to lethal velocity with the power of electromagnetism. it's for pirates to kill people with.
* mechanically, this isn't that different from a sakhno-zihao if it could also shoot buckshot on the side. in return the magazine is smaller
*/

/obj/item/gun/ballistic/rifle/bolt_thrower
	name = "bolt thrower"
	desc = "Tiziran small arms often feature gauss or rail gun style electromagnetic drivers in an effort to prevent \
	errant sparks from igniting low lying puddles of subterranean gasses. Since the coils are easily and frequently \
	tuned hot by errant operators, they end up causing ignitions anyway when hypersonic projectiles hit still air."
	icon = 'modular_doppler/modular_weapons/icons/obj/guns48x.dmi'
	icon_state = "bolt_thrower"
	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_SUITSTORE
	accepted_magazine_type = /obj/item/ammo_box/magazine/internal/bolt_thrower
	fire_sound = 'modular_doppler/modular_sounds/sound/items/bolt_thrower.ogg'
	weapon_weight = WEAPON_HEAVY
	need_bolt_lock_to_interact = TRUE

/obj/item/gun/ballistic/rifle/bolt_thrower/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/scope, range_modifier = 1.5)

/obj/item/ammo_box/magazine/internal/bolt_thrower
	name = "bolt thrower internal magazine"
	ammo_type = /obj/item/ammo_casing/bolt_slug
	caliber = CALIBER_BOLT_THROWER
	max_ammo = 3
