// departmental candy dispensers to ensure that there's always something for trick-or-treaters.

/obj/structure/candy_dish
	name = "hypothetical candy dish"
	abstract_type = /obj/structure/candy_dish
	icon = 'modular_doppler/modular_items/icons/candy_dish.dmi'
	/// list of things that we spawn from here. much like a loot spawner, rarity can be controlled by adding multiple to a list i.e. /obj/item/food/doppler_candy/lemon_drops = 4
	var/list/candy_list

// interacting takes something from the candy list and applies a brief status effect that makes you too embarassed to take more
/obj/structure/candy_dish/attack_hand(mob/living/user, list/modifiers)
	. = ..()
	if(!user.ckey)
		return
	if(user.has_status_effect(/datum/status_effect/candy_taker))
		to_chat(user, span_notice("You shouldn't take something else yet."))
		return
	else
		var/mob/living/carbon/candy_taker = user
		var/obj/item/candy = pick_weight_recursive(candy_list)
		candy_taker.put_in_hand(new candy)
		to_chat(user, span_notice("You take the [candy] from the dish."))
		candy_taker.apply_status_effect(candy_taker)
		return

/*/obj/structure/candy_dish/wrench_act(mob/living/user, obj/item/tool)
	if(user.combat_mode)
		return NONE

	. = ITEM_INTERACT_BLOCKING
	if(default_unfasten_wrench(user, tool, time = 1 SECONDS) == SUCCESSFUL_UNFASTEN)
		return ITEM_INTERACT_SUCCESS*/

// 30 seconds to refresh so people don't just make piles of unwanted candy at one bowl
/datum/status_effect/candy_taker
	id = "candy_taker"
	duration = 30 SECONDS
	status_type = STATUS_EFFECT_UNIQUE
	alert_type = null

// every department gets a unique dish with a different list of goodies, to encourage trick-or-treating.

/obj/structure/candy_dish/security
	name = "\improper Port Safety candy dish"
	desc = "A stalwart bastion of sweet treats in a bold red color."
	icon_state = "security"
	// red and spicy candies
	candy_list = list(
		/obj/item/food/doppler_candy/red_twigs = 5,
		/obj/item/food/doppler_candy/tamarind = 2,
		/obj/item/food/doppler_candy/spicy_reds = 5,
		/obj/item/food/candiedapple = 2,
		/obj/item/food/donut/berry = 1,	// epic pull
	)

/obj/structure/candy_dish/engineering
	name = "precisely engineered candy dish"
	desc = "Though it looks like a mundane blown glass bowl, it's actually perfectly radially symmetrical to the single micromiliter, \
	resulting in a zero percent increase in its efficacy as a bowl."
	icon_state = "engineering"
	// sour and yellow candy
	candy_list = list(
		/obj/item/food/doppler_candy/nuke_fuel = 5,
		/obj/item/food/doppler_candy/lemon_drops = 5,

	)
