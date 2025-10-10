// under suits

/obj/item/clothing/under/rank/doppler_cargo
	icon = 'modular_doppler/modular_cosmetics/icons/cargo_resprite/doppler_cargo_obj.dmi'
	icon_state = "suits"
	worn_icon = 'modular_doppler/modular_cosmetics/icons/cargo_resprite/doppler_cargo_mob.dmi'
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION
	supported_bodyshapes = list(BODYSHAPE_HUMANOID, BODYSHAPE_DIGITIGRADE)
	bodyshape_icon_files = list(
		BODYSHAPE_HUMANOID_T = 'modular_doppler/modular_cosmetics/icons/cargo_resprite/doppler_cargo_mob.dmi',
		BODYSHAPE_DIGITIGRADE_T = 'modular_doppler/modular_cosmetics/icons/cargo_resprite/doppler_cargo_mob_digi.dmi'
	)

/obj/item/clothing/under/rank/doppler_cargo/tech
	name = "cargo technician's uniform"
	desc = "A high durability tech-textile top with a pair of roomy cargo pants."
	icon_state = "cargo_uniform"

/obj/item/clothing/under/rank/doppler_cargo/tech/skirt
	name = "cargo technician's skirt"
	desc = "A durable techthread top and skirt set."
	icon_state = "cargo_skirt"

/obj/item/clothing/under/rank/doppler_cargo/tech/alt
	name = "cargo technician's tanktop uniform"
	desc = "A sleeveless variant on the cargo uniform standard and a popular choice for poorly ventilated warehouses."
	icon_state = "cargo_tanktop"

/obj/item/clothing/under/rank/doppler_cargo/tech/skirt/alt
	name = "cargo technician's tanktop and skirt uniform"
	desc = "A sleeveless variant on the cargo uniform standard paired with a rugged take on a skirt."
	icon_state = "cargo_tankskirt"

/obj/item/clothing/under/rank/doppler_cargo/tech/fancy
	name = "cargo technician's dress uniform"
	desc = ""
	icon_state = "cargo_fancypants"

/obj/item/clothing/under/rank/doppler_cargo/tech/fancy_skirt
	name = "cargo technician's dress skirt"
	desc = ""
	icon_state = "cargo_fancyskirt"

/obj/item/clothing/under/rank/doppler_cargo/tech/turtleneck
	name = "cargo technician's turtleneck"
	desc = ""
	icon_state = "cargo_turtleneck"

/obj/item/clothing/under/rank/doppler_cargo/tech/turtleskirt
	name = "cargo technician's turtleneck and skirt"
	desc = ""
	icon_state = "cargo_turtleskirt"

/obj/item/clothing/under/rank/doppler_cargo/tech/rough
	name = "cargo technician's rugged uniform"
	desc = ""
	icon_state = "cargo_rough"

/obj/item/clothing/under/rank/doppler_cargo/tech/rough_skirt
	name = "cargo technician's rugged skirt"
	desc = ""
	icon_state = "cargo_roughskirt"

// suits

/obj/item/clothing/suit/jacket/cargo_coat
	name = "cargo warehouse coat"
	desc = ""
	icon = 'modular_doppler/modular_cosmetics/icons/cargo_resprite/doppler_cargo_obj.dmi'
	icon_state = ""
	worn_icon = 'modular_doppler/modular_cosmetics/icons/cargo_resprite/doppler_cargo_mob.dmi'
	allowed = list(
		/obj/item/tank/internals/emergency_oxygen,
		/obj/item/tank/internals/plasmaman,
		/obj/item/boxcutter,
		/obj/item/dest_tagger,
		/obj/item/stamp,
		/obj/item/storage/bag/mail,
		/obj/item/universal_scanner,
	)

/obj/item/clothing/suit/jacket/cargo_coat/fancy
	name = "cargo technician's dress coat"
	desc = ""
	icon_state = ""

/obj/item/clothing/suit/jacket/cargo_coat/high_vis
	name = ""
	desc = ""
	icon_state = ""

/obj/item/clothing/suit/jacket/cargo_coat/chore
	name = "cargo chore coat"
	desc = "A brown jacket made of a synthetic fiber in a tightly woven duck fabric."
	icon_state = "cargo_chore_coat"

/obj/item/clothing/suit/jacket/cargo_shearling
	name = ""
	desc = ""
	icon_state = ""

/obj/item/clothing/suit/jacket/cargo_greatcoat
	name = ""
	desc = ""
	icon_state = ""
