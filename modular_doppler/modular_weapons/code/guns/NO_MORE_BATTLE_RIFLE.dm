/obj/item/gun/ballistic/automatic/battle_rifle/Initialize(mapload)
	. = ..()
	var/obj/new_rifle = new /obj/item/gun/ballistic/automatic/marcielle(get_turf(src))
	new_rifle.pixel_y = pixel_y
	return INITIALIZE_HINT_QDEL
