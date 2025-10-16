/*
* basically a cross between the skeleton pirates' cannon and the BSA mechanically, or a proton cannon that's been obrezed.
* this fires explosive projectiles with limited range before bursting, sucks a ton of power off the shuttle's power grid to do so,
* and has a moderate cooldown.
*/

/obj/machinery/snub_particle_cannon
	name = "snub nose proton cannon"
	desc = "A weaponized particle accelerator that fires balls of hyper-energized protons. Originally built to fit ships much \
	larger than this, this one has had most of its barrel and much of its cooling systems removed."
	icon = 'modular_doppler/modular_weapons/icons/obj/guns32x.dmi'
	icon_state = "snub_nose_ppc"
	density = TRUE
	circuit = null
	/// how much energy we take out of the grid when we fire a shot. uses WATTS
	var/power_draw_per_shot = 2000 WATTS
	/// what comes out of our barrel
	var/projectile_type = /obj/projectile/energy/snub_particle_cannon_bolt
	/// whether we're on cooldown
	var/ready_to_fire = TRUE

/obj/machinery/snub_particle_cannon/wrench_act(mob/living/user, obj/item/tool)
	. = ..()
	return FALSE

/obj/machinerysnub_particle_cannon/proc/fire()
	var/obj/projectile/fired_bolt = new projectile_type(get_turf(src))
	use_energy(power_draw_per_shot)

/obj/projectile/energy/snub_particle_cannon_bolt
	name = "energized proton bolt"
	icon = 'modular_doppler/modular_weapons/icons/projectiles.dmi'
	icon_state = "ppc_bolt"

/obj/machinery/computer/snub_particle_cannon_controller
	name = "fire control system"
	desc = "The computerized control system for the ship's mounted proton cannon."
	icon_screen = "syndishuttle"
	icon_keyboard = "tcboss"
	/// weakref for our attached gun
	var/datum/weakref/snub_particle_cannon
	/// mapping id for our attached gun
	var/mapping_id
	/// tells us if the cannon is working
	var/cannon_info

/obj/machinery/computer/snub_particle_cannon_controller/post_machine_initialize()
	. = ..()
	if(!mapping_id)
		return
	for(var/obj/machinery/snub_particle_cannon/cannon as anything in SSmachines.get_machines_by_type_and_subtypes(/obj/machinery/snub_particle_cannon))
		if(cannon.mapping_id != mapping_id)
			continue
		register_machine(cannon)
		break

/obj/machinery/computer/snub_particle_cannon_controlle/ui_state(mob/user)
	return GLOB.physical_state

/obj/machinery/computer/snub_particle_cannon_controlle/ui_interact(mob/user, datum/tgui/ui)
	. = ..()
	ui = SStgui.try_update_ui(user, src, ui)
	if(!ui)
		ui = new(user, src, "SnubProtonCannon", name)
		ui.open()

