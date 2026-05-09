//	grocery boxes with Marsian ingredients

/obj/item/storage/box/marsian_produce
	name = "Flavors of Mars Produce Pack"
	desc = "A box of farm-fresh Marsian style produce. Locally grown, which means it didn't come from Mars."
	icon = 'modular_doppler/modular_cargo/icons/boxes.dmi'
	icon_state = "marsian_box"
	illustration = null

/obj/item/storage/box/marsian_produce/PopulateContents()
	for(var/i in 1 to 12)
		var/random_food = pick_weight(list(
		/obj/item/food/kimchi = 5,
		/obj/item/food/inferno_kimchi = 2,
		/obj/item/food/garlic_kimchi = 3,
		/obj/item/food/grown/pineapple = 5,
		/obj/item/food/grown/onion = 3,
		/obj/item/food/grown/cabbage = 2,
		/obj/item/food/grown/garlic = 2,
		/obj/item/food/grown/chili = 3,
		/obj/item/food/grown/ghost_chili = 1,
		/obj/item/food/grown/potato = 3,
		/obj/item/food/grown/bell_pepper = 3,
			))
		new random_food(src)

/obj/item/storage/box/marsian_goods
	name = "Flavors of Mars Goods Pack"
	desc = "A shipment of Marsian processed foods and seasonings. A must for any diasporic kitchen."
	icon = 'modular_doppler/modular_cargo/icons/boxes.dmi'
	icon_state = "marsian_box"
	illustration = null

/obj/item/storage/box/marsian_goods/PopulateContents()
	for(var/i in 1 to 12)
		var/random_food = pick_weight(list(
		/obj/item/food/surimi = 5,
		/obj/item/food/kamaboko = 5,
		/obj/item/food/sambal = 5,
		/obj/item/food/rice_dough = 5,
		/obj/item/food/spaghetti/rawnoodles = 4,
		/obj/item/food/bread/reispan = 4,
		/obj/item/food/canned/chap = 5,
		/obj/item/reagent_containers/condiment/red_bay = 2,
		/obj/item/reagent_containers/condiment/curry_powder = 2,
		/obj/item/reagent_containers/condiment/dashi_concentrate = 2,
		/obj/item/reagent_containers/condiment/soysauce = 2,
			))
		new random_food(src)
