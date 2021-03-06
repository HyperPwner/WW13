/mob/living/carbon/
	gender = MALE
	var/datum/species/species //Contains icon generation and language information, set during New().
	var/list/stomach_contents = list()
	var/list/datum/disease2/disease/virus2 = list()
	var/list/antibodies = list()

	var/life_tick = FALSE      // The amount of life ticks that have processed on this mob.
	var/analgesic = FALSE // when this is set, the mob isn't affected by shock or pain
					  // life should decrease this by TRUE every tick
	// total amount of wounds on mob, used to spread out healing and the like over all wounds
	var/obj/item/handcuffed = null //Whether or not the mob is handcuffed
	var/obj/item/legcuffed = null  //Same as handcuffs but for legs. Bear traps use this.
	//Surgery info
	var/datum/surgery_status/op_stage = new/datum/surgery_status
	//Active emote/pose
	var/pose = null
	var/list/chem_effects = list()
	var/datum/reagents/metabolism/bloodstr = null
	var/datum/reagents/metabolism/ingested = null
	var/datum/reagents/metabolism/touching = null
	var/losebreath = FALSE //if we failed to breathe last tick

	var/coughedtime = null
	var/lastpuke = FALSE

	var/cpr_time = 1.0

	var/obj/item/weapon/tank/internal = null//Human/Monkey

	// hunger
	var/nutrition = 160.0
	var/max_nutrition = 400.0

	// thirst
	var/water = 140.0
	var/max_water = 350.0
