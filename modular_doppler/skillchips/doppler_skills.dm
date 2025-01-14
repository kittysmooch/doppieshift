// most of our skillchips are pretty straightforward and don't need extensive code blocks to function, so we catch them all here \\
// rather than having a lot of small dms \\

//FIELD SURGEON is handled with existing code, c.f. TRAIT_SURGEON\\

//PIPE ACOUSTICS\\

/obj/item/pipe/wrench_act_secondary(mob/living/user, obj/item/tool) //relies on tg not giving wrenches something to do on right clicking a pipe
	. = ..()
	if(user.HAS_TRAIT(user, TRAIT_PIPE_ACOUSTICIAN))
		var/mixture = target.return_analyzable_air()				//reused analyzer call, but we only care about whether gas is present at all.
		if(!mixture)
			to_chat(user, span_warning("The pipe rings with a dull and hollow sound."))
		else(mixture)
			to_chat(user, span_warning("The pipe sings with rushing gas."))
		if()
	return ..()

//SEMI-UNIVERSAL TRANSLATOR\\

/obj/item/skillchip/doppler/universal_translator/on_activate(mob/living/carbon/user, silent = FALSE)
	. = ..()
	grant_all_languages(UNDERSTOOD_LANGUAGE, grant_omnitongue = FALSE, source = LANGUAGE_ATOM)

/obj/item/skillchip/job/chef/on_deactivate(mob/living/carbon/user, silent)
	. = ..()

	return ..()

//VENDOR WHISPERER\\

/datum/wires/vending/can_reveal_wires(mob/user)
	if((HAS_TRAIT(user, TRAIT_KNOW_ENGI_WIRES)) || (HAS_TRAIT(user, TRAIT_KNOW_VENDOR_WIRES)))
		return TRUE

	return ..()

//ELECTRIC SENSITIVITY\\

/obj/structure/cable/examine_more(mob/user)
	. = ..()
	if((HAS_TRAIT(user, TRAIT_ELECTRIC_SENSITIVITY)) && (powernet?.avail > 0))
		to_chat(user, span_danger("The cable hums with energy."))
	else if((HAS_TRAIT(user, TRAIT_ELECTRIC_SENSITIVITY)) && (powernet?.avail <= 0))
		to_chat(user, span_danger("The cable lays silent."))
	else
		return

//BLOOD SEER\\



//MUSTER MILITIA\\



//FIRELOCK FINGERER\\



//OFFICIAL DEFOREST FAN ASSOCIATE\\



//VENT DOWSER\\



//SPEED SCULPTOR\\



//THE BLINKER\\



//THE YELLER\\

