/obj/item/ammo_box/magazine/ammo_stack/c585naraka
	name = ".585 naraka casings"
	desc = "A stack of .585 naraka casings."
	icon_state = "stack_spec"
	caliber = CALIBER_585NARAKA
	ammo_type = /obj/item/ammo_casing/c585naraka
	casing_phrasing = "casing"
	max_ammo = 6
	casing_x_positions = list(
		-6,
		-3,
		0,
		3,
		6,
	)
	casing_y_padding = 9

/datum/design/c34nb
	name = ".585 naraka casing (VERY Lethal)"
	id = "c585naraka"
	build_type = AUTOLATHE | PROTOLATHE | AWAY_LATHE
	materials = list(/datum/material/iron = SHEET_MATERIAL_AMOUNT * 3)
	build_path = /obj/item/ammo_casing/c34nb
	category = list(
		RND_CATEGORY_INITIAL,
		RND_CATEGORY_WEAPONS + RND_SUBCATEGORY_WEAPONS_AMMO,
	)
	departmental_flags = DEPARTMENT_BITFLAG_SECURITY

/datum/techweb_node/basic_arms/New()
	design_ids |= list(
		"c585naraka",
		"c25euro",
	)
	return ..()
