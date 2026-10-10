/obj/item/food/doppler_candy
	icon = 'modular_doppler/modular_food_drinks_and_chems/icons/candy.dmi'
	abstract_type = /obj/item/food/doppler_candy
	food_flags = FOOD_FINGER_FOOD
	foodtypes = JUNKFOOD | SUGAR

/obj/item/food/doppler_candy/red_twigs
	name = "\improper Red Twigs licorice"
	desc = "Waxy sugar sticks with a hollow core. They aren't that bad when they haven't been sitting on top of a \
	primary school teacher's desk for seven years."
	icon_state = "red_twigs"
	food_reagents = list(
		/datum/reagent/consumable/sugar = 5,
	)
	tastes = list("red #9" = 1, "wax" = 1, "slight sweetness" = 1)

/obj/item/food/doppler_candy/tamarind
	name = "\improper Tamaro tamarind candy"
	desc = "The candied fruit of the tamarind tree rolled in chili powder, a classic Central American treat that's \
	spread across settled space with the help of key partnership campigns with idols and influencers. Consequently, \
	a lot of people eating it lately don't seem to know if they should be enjoying themselves."
	icon_state = "tamarind"
	food_reagents = list(
		/datum/reagent/consumable/sugar = 5,
		/datum/reagent/consumable/nutriment = 1,	// technically contains fruit
	)
	tastes = list("mild chile" = 1, "fruity flavor" = 1, "sugary sweetness" = 1)

/obj/item/food/doppler_candy/spicy_reds
	name = "\improper Spicy Reds cinammon drops"
	desc = "Ellipsoidic grains of gum arabic, corn syrup, and artificial cinammon flavorings. In spite of the name, \
	these are utterly mild."
	icon_state = "spicy_reds"
	food_reagents = list(
		/datum/reagent/consumable/sugar = 5,
	)
	tastes = list("vaguely cinammonesque flavorings" = 3, "stale gum" = 1)

/obj/item/food/doppler_candy/nuke_fuel
	name = "\improper Nuke Fuel sour candy"
	desc = "The popular rumor about a kid burning a hole in his tongue with these was actually true. There were photographs \
	of it. It hasn't done anything to slow sales."
	icon_state = "nuke_fuel"
	food_reagents = list(
		/datum/reagent/consumable/sugar = 4,
		/datum/reagent/consumable/lemonjuice = 1,
		/datum/reagent/consumable/sour_sugar = 5,
	)
	tastes = list("battery acid" = 2, "citric acid" = 1, "sugary sweetness" = 1)

/datum/reagent/consumable/sour_sugar
	name = "sour sugar"
	description = "A mixture of sugar and citric acid."
	color = COLOR_WHITE
	taste_mult = 1.5
	nutriment_factor = 2
	metabolization_rate = 5 * REAGENTS_METABOLISM
	taste_description = "sour sweetness"
	default_container = /obj/item/reagent_containers/cup/bottle

// burns ur tongue when u eat it
/datum/reagent/consumable/sour_sugar/on_mob_life(mob/living/carbon/affected_mob, seconds_per_tick, times_fired)
	. = ..()
	var/need_mob_update
	if(SPT_PROB(10, seconds_per_tick))
		affected_mob.adjustOrganLoss(ORGAN_SLOT_TONGUE, 1, 50, affected_biotype)
		need_mob_update = TRUE
	if(need_mob_update)
		return UPDATE_MOB_HEALTH

/obj/item/food/doppler_candy/lemon_drops
	name = "\improper Citraheadz lemon drops"
	desc = "A long time ago these would be made by rolling lemon juice and simple syrup together in a hot skillet. \
	Now they're made by tumbling lemon juice and simple syrup together in a drum, but it doesn't stop people from \
	confidently claiming that these aren't as good."
	icon_state = "lemon_drops"
	food_reagents = list(
		/datum/reagent/consumable/sugar = 5,
	)
	tastes = list("lemon" = 3, "sugary sweetness" = 2, "nostalgia" = 1)

/obj/item/food/doppler_candy/dentabite
	name = "\improper Dentabite dental chew"
	desc = "Compressed xantham gum and gelatin with mint for flavor and fresh breath. No one said you had to be a \
	dog to have one."
	icon_state = "dentabite"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3,	// the healthiest thing in this lineup
	)
	foodtypes = JUNKFOOD

/obj/item/toothbrush
	name = "toothbrush"
	desc = "A soft bristled cleaning brush for your teeth."
	icon = 'modular_doppler/modular_food_drinks_and_chems/icons/candy.dmi'
	icon_state = "toothbrush"
