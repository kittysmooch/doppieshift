/*
  /\_/\
 ( o.o ) for doppler exclusive skillchips, of course
  > ^ <
*/

/obj/item/skillchip/doppler
	desc = "This biochip integrates with user's brain to enable mastery of specific skill. The Port Authority is not \
	responsible for complications that may arise as a result of use."

/obj/item/skillchip/doppler/operating_computer
	name = "5K47P3R surgical skillchip"
	desc = ""
	auto_traits = list(TRAIT_SURGEON)
	skill_name = "Field Surgeon"
	skill_description = "Perform advanced surgeries without computer assistance."
	skill_icon = "user-doctor"
	activate_message = span_notice("Sophisticated surgical techniques flood your synapses.")
	deactivate_message = span_notice("Advanced surgical techniques disappear from your memory.")

/obj/item/skillchip/doppler/pipe_acoustics
	name = "47M0514N pipe acoustics skill chip"
	desc = ""
	auto_traits = list(TRAIT_PIPE_ACOUSTICIAN)
	skill_name = "Pipe Acoustician"
	skill_description = "Find the air in the pipes with a practiced smack. Find other things in there too."
	skill_icon = "wrench"
	activate_message = span_notice("The thrum of air in the pipes becomes apparent to you.")
	deactivate_message = span_notice("The droning sounds of blasting air recede for now.")

/obj/item/skillchip/doppler/universal_translator
	name = "B4B37 semi-universal translation skillchip"
	desc = ""
	skill_name = "Semi-Universal Translator"
	skill_description = "Understand every language you hear. Spoken fluency sold seperately."
	skill_icon = "language"
	activate_message = span_notice("The Tower of Babel crumbles before you.")
	deactivate_message = span_notice("A gulf of understanding widens before you.")

/obj/item/skillchip/doppler/vendor_whisperer
	name = "P3NNY-57UG vendor whispering skillchip"
	desc = ""
	auto_traits = list(TRAIT_KNOW_VENDOR_WIRES)
	skill_name = "Vendor Whisperer"
	skill_description = "The secrets of the vending machines are free to those with eyes to see."
	skill_icon = "coins"
	activate_message = span_notice("The wires. You know them. You can see now.")
	deactivate_message = span_notice("The secrets of vending machines elude you once more.")

/obj/item/skillchip/doppler/electric_sensitivity
	name = "5t4t1k electric sensitization skillchip"
	desc = ""
	auto_traits = list(TRAIT_ELECTRIC_SENSITIVITY)
	skill_name = "Electric Sensitivity"
	skill_description = "Feel the energy of the cables with your mind, not with your hands."
	skill_icon = "plug-circle-bolt"
	activate_message = span_notice("Cables vibrate with potential just beneath your feet.")
	deactivate_message = span_notice("The floors have fallen silent.")

/obj/item/skillchip/doppler/blood_seer
	name = "5UKK3RZ blood seer skillchip"
	desc = ""
	skill_name = "Blood Seer"
	skill_description = "Find a person's blood volume at a glance! For medicinal use only."
	skill_icon = "droplet"
	activate_message = span_notice("Is everyone looking a little more corpulent today?")
	deactivate_message = span_notice("Those around you seem a little paler now.")

/obj/item/skillchip/doppler/muster_militia
	name = "M171T14 muster training skillchip"
	desc = ""
	skill_name = "Muster Training"
	skill_description = "There's little time to find a fire closet in an emergency, but now you'll know where to look."
	skill_icon = "fire-extinguisher"
	activate_message = span_notice("The emergency closets call to you.")
	deactivate_message = span_notice("The calls of the closets fall silent.")

/obj/item/skillchip/doppler/firelock_fingerer
	name = "BRNW4RD firelock tech skillchip"
	desc = ""
	skill_name = "Firelock Tech"
	skill_description = "Activates hidden reserves of strength, but only specifically when bare hand opening a firelock. \
	The Port Authority is not responsible for injury or maiming that may occur as a result of using this skillchip."
	skill_icon = "hand"
	activate_message = span_notice("The firelock servos whine at your presence.")
	deactivate_message = span_notice("The firelock servos flex their might before you.")

/obj/item/skillchip/doppler/official_deforest
	name = "OFFICIAL Deforest™ Applicator Associate skillchip"
	desc = ""
	skill_name = "Official Deforest Fan-Representative"
	skill_description = "Deforest Medical's EZ-use autoinjectors are even EZ-ier to use than ever."
	skill_icon = "syringe"
	activate_message = span_notice("Veins bulge and beckon you.")
	deactivate_message = span_notice("How does this injector work again?")

/obj/item/skillchip/doppler/mining_survey
	name = "0Rz vent dowsing skillchip"
	desc = ""
	skill_name = "Vent Dowsing"
	skill_description = "Find your way to the nearest ore vent as if by instinct."
	skill_icon = "industry"
	activate_message = span_notice("The wind whistles through the pores of the ground, and you can hear it.")
	deactivate_message = span_notice("You lose your affinity with the dirt.")

/obj/item/skillchip/doppler/master_sculptor
	name = "M1K474NG370 speed sculpting skillchip"
	desc = ""
	skill_name = "Speed Sculptor"
	skill_description = "Be the envy of your circles when you finish your hobby sculpture projects in record time!"
	skill_icon = "hammer"
	activate_message = span_notice("The chisel becomes like an extension of yourself.")
	deactivate_message = span_notice("You're all thumbs at the sculptor's table.")

/obj/item/skillchip/doppler/the_blinker
	name = "B71NK3R blink deinhibitor skillchip"
	desc = ""
	skill_name = "Deactivated Blink Inhibition"
	skill_description = "Specialized neuro-imaging increases the speed of a user's automatic blink response by as \
	much as 73%, resulting in less eye strain and more efficient surface moisturation."
	skill_icon = "eye"
	activate_message = span_notice("Your eyelids increase speed.")
	deactivate_message = span_notice("Blinking has become a clumsy chore.")

/obj/item/skillchip/doppler/the_yeller
	name = "5734Z3B4G4N0 lawyerly lungs skillchip"
	desc = ""
	skill_name = "Lawyerly Lungs"
	skill_description = "Shouting techniques developed for cutting edge court room rhetoric and now made available for \
	the general consumer."
	skill_icon = "lungs"
	activate_message = span_notice("You breathe oxygen and belch rhetorical miasma.")
	deactivate_message = span_notice("You feel a little less sleazy.")
