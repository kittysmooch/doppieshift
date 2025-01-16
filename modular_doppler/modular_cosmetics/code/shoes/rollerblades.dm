//UNDERSTAND
//UNDERSTAND

//UNDERSTAND
//UNDERSTAND

//UNDERSTAND
//UNDERSTAND

//THE CONCEPT OF (THE CONCEPT OF)
/*
::::          ::::::      ::::      ::::    :::::::::
::::        ::::  ::::    ::::      ::::    :::::::::
::::       ::::    ::::   ::::      ::::    ::::
::::       ::::    ::::    ::::    ::::     ::::::::
::::       ::::    ::::     ::::  ::::      ::::
::::       ::::    ::::      ::::::::       ::::
::::::::::  ::::  ::::        ::::::        :::::::::
::::::::::    ::::::           ::::         :::::::::
*/


/obj/item/clothing/shoes/rollerblades
	name = "XTREME inline skates"
	desc = "Boots of polyurethane and plastic with strategic steel inserts for strength, affixed with casters and optimized \
	for speed at the expense of ease of riding. This pair didn't come with a skidplate."
	icon_state = "rollerblades"
	worn_x_dimension = 48
	worn_y_dimension = 48
	greyscale_config = /datum/greyscale_config/rollerblades
	greyscale_config_worn = /datum/greyscale_config/rollerblades/worn
	greyscale_colors = "#66ff66#ff6699#99ff66#66ccff#333300"
	flags_1 = IS_PLAYER_COLORABLE_1
	clothing_flags = LARGE_WORN_ICON
	var/obj/vehicle/ridden/scooter/skateboard/rollerblades/wheels = /obj/vehicle/ridden/scooter/skateboard/rollerblades
	supported_bodyshapes = null
	bodyshape_icon_files = null
	equip_delay_self = 20

//wheelys had undesirable code surviving overrides, so we make a new type of shoe and reproduce code dirty style

/obj/item/clothing/shoes/rollerblades/Initialize(mapload)
	. = ..()
	AddElement(/datum/element/update_icon_updates_onmob)
	AddComponent(/datum/component/item_equipped_movement_rustle, SFX_SKATER, 4, 100)
	wheels = new wheels(/obj/vehicle/ridden/scooter/skateboard/rollerblades)
	wheels.link_shoes(src)

/obj/item/clothing/shoes/rollerblades/equipped(mob/user, slot)
	. = ..()
	if(slot & ITEM_SLOT_FEET)
		wheels.forceMove(get_turf(user))
		wheels.buckle_mob(user)
	else
		return

/obj/item/clothing/shoes/rollerblades/dropped(mob/user)
	wheels.unbuckle_mob(user)
	..()

/obj/item/clothing/shoes/rollerblades/Destroy()
	QDEL_NULL(wheels)
	. = ..()

//the invisible vehicle we ride on to simulate skating

/obj/vehicle/ridden/scooter/skateboard/rollerblades
	name = "XTREME inline wheels"
	desc = ""
	instability = 8
	icon_state = null
	density = FALSE
	var/obj/item/clothing/shoes/rollerblades/shoes = null
	var/component_type = /datum/component/riding/vehicle/scooter/skateboard/rollerblades

/obj/vehicle/ridden/scooter/skateboard/rollerblades/Initialize(mapload)
	. = ..()


//overrides some stuff inherited from skateboards & reproduces stuff we need from wheelys

/obj/vehicle/ridden/scooter/skateboard/rollerblades/make_ridable()
	AddElement(/datum/element/ridable, component_type)

/obj/vehicle/ridden/scooter/skateboard/rollerblades/post_unbuckle_mob(mob/living/M)
	return ..()

/obj/vehicle/ridden/scooter/skateboard/rollerblades/pick_up_board(mob/living/carbon/Skater)
	return

/obj/vehicle/ridden/scooter/skateboard/rollerblades/post_buckle_mob(mob/living/M)
	return ..()

/obj/vehicle/ridden/scooter/skateboard/rollerblades/proc/link_shoes(newshoes)
	shoes = newshoes

/obj/vehicle/ridden/scooter/skateboard/generate_actions()
	initialize_controller_action_type(/datum/action/vehicle/ridden/scooter/skateboard/ollie, VEHICLE_CONTROL_DRIVE)
	return

/datum/component/riding/vehicle/scooter/skateboard/rollerblades
	vehicle_move_delay = 1 //equivalent to the pro skateboard; these function very similarly aside from being stuck to your feet
