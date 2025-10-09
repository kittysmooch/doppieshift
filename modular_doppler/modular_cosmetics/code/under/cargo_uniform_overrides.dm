// everything cargo related that's getting overriden lives here; the new stuff lives next door

/obj/item/clothing/under/rank/cargo/tech
	desc = "A high visibility tech-textile top with a pair of roomy cargo pants."
	icon = 'modular_doppler/modular_cosmetics/icons/cargo_resprite/doppler_cargo_obj.dmi'
	icon_state = "cargo_uniform"
	worn_icon = 'modular_doppler/modular_cosmetics/icons/cargo_resprite/doppler_cargo_mob.dmi'
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION
	supported_bodyshapes = list(BODYSHAPE_HUMANOID, BODYSHAPE_DIGITIGRADE)
	bodyshape_icon_files = list(
		BODYSHAPE_HUMANOID_T = 'modular_doppler/modular_cosmetics/icons/cargo_resprite/doppler_cargo_mob.dmi',
		BODYSHAPE_DIGITIGRADE_T = 'modular_doppler/modular_cosmetics/icons/cargo_resprite/doppler_cargo_mob_digi.dmi'
	)

/obj/item/clothing/under/rank/cargo/tech/skirt
//	icon = 'modular_doppler/modular_cosmetics/icons/cargo_resprite/doppler_cargo_resprite_nondigi.dmi'
	icon_state = "cargo_skirt"
//	worn_icon = 'modular_doppler/modular_cosmetics/icons/cargo_resprite/doppler_cargo_resprite_nondigi.dmi'

/obj/item/clothing/under/rank/cargo/tech/alt
	name = "cargo technician's tanktop uniform"
	desc = "A sleeveless variant on the cargo uniform standard that's a popular choice for poorly ventilated warehouses."
//	icon = 'modular_doppler/modular_cosmetics/icons/cargo_resprite/doppler_cargo_resprite_nondigi.dmi'
	icon_state = "cargo_tanktop"
//	worn_icon = 'modular_doppler/modular_cosmetics/icons/cargo_resprite/doppler_cargo_resprite_nondigi.dmi'

/obj/item/clothing/under/rank/cargo/tech/skirt/alt
	name = "cargo technician's tanktop and skirt uniform"
	desc = "A sleeveless variant on the cargo uniform standard paired with a rugged take on a skirt."
//	icon = 'modular_doppler/modular_cosmetics/icons/cargo_resprite/doppler_cargo_resprite_nondigi.dmi'
	icon_state = "cargo_tankskirt"
//	worn_icon = 'modular_doppler/modular_cosmetics/icons/cargo_resprite/doppler_cargo_resprite_nondigi.dmi'


