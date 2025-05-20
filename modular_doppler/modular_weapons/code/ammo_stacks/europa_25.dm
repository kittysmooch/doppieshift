/obj/item/ammo_box/magazine/ammo_stack/c25euro
	name = ".25 europa casings"
	desc = "A stack of .25 europa casings."
	caliber = CALIBER_25EUROPA
	ammo_type = /obj/item/ammo_casing/c25euro
	max_ammo = 5
	casing_x_positions = list(
		-4,
		-2,
		0,
		2,
		4,
	)
	casing_y_padding = 6

/datum/design/c25euro
	name = ".25 europa casing (Lethal)"
	id = "c25euro"
	build_type = AUTOLATHE | PROTOLATHE | AWAY_LATHE
	materials = list(/datum/material/iron = SHEET_MATERIAL_AMOUNT * 2)
	build_path = /obj/item/ammo_casing/c25euro
	category = list(
		RND_CATEGORY_INITIAL,
		RND_CATEGORY_WEAPONS + RND_SUBCATEGORY_WEAPONS_AMMO,
	)
	departmental_flags = DEPARTMENT_BITFLAG_SECURITY
