/obj/item/clothing/gloves/color/black/security/doppler
	name = "fingerless gloves"
	desc = "Port Safety adopted these as standard issue as the direct result of a pet project of a group of \
	point shooting PDW enthusiasts with pull on materiel acquisitions committees. This was in spite of the \
	passionate protests of forensics techs across the organization."
	icon = 'modular_doppler/modular_cosmetics/icons/security_resprite/doppler_security_obj.dmi'
	worn_icon = 'modular_doppler/modular_cosmetics/icons/security_resprite/doppler_security.dmi'
	icon_state = "fingerless_sec"
	clothing_traits = list(TRAIT_FINGERPRINT_PASSTHROUGH)	// i love contaminated crime scenes!!

/obj/item/clothing/gloves/color/black/security/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/adjust_fishing_difficulty, -4)

/obj/item/clothing/gloves/color/black/security/detective
	name = "red nitrile gloves"
	desc = "A thin membrane of brick-red nitrile that keeps forensic techs from contaminating evidence."
	icon = 'modular_doppler/modular_cosmetics/icons/security_resprite/doppler_security_obj.dmi'
	worn_icon = 'modular_doppler/modular_cosmetics/icons/security_resprite/doppler_security.dmi'
	icon_state = "det_gloves"
	siemens_coefficient = 0.3
	armor_type = /datum/armor/latex_gloves
	clothing_traits = list(TRAIT_QUICK_CARRY)
	resistance_flags = NONE

/obj/item/clothing/gloves/krav_maga/sec
	name = "wrestling gloves"
	desc = "Close fit and comfortable gloves with armored knuckles and contoured grip panels. It's genuinely a \
	great pair of wrestling gloves in spite of the tacky skull emblem on the straps."
	icon = 'modular_doppler/modular_cosmetics/icons/security_resprite/doppler_security_obj.dmi'
	worn_icon = 'modular_doppler/modular_cosmetics/icons/security_resprite/doppler_security.dmi'
	icon_state = "warden_gloves"
