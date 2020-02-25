/obj/map_metadata/bohemia
	ID = MAP_BOHEMIA
	title = "Bohemia (250x250x2)"
	lobby_icon_state = "medieval"
	no_winner ="The round is proceeding normally."
	caribbean_blocking_area_types = list(/area/caribbean/no_mans_land/invisible_wall/)
	respawn_delay = 7200 // 12 minutes!
	squad_spawn_locations = FALSE
	faction_organization = list(
		GERMAN)
	available_subfactions = list(
		)
	roundend_condition_sides = list(
		list(GERMAN) = /area/caribbean/british,
		)
	age = "1013"
	ordinal_age = 2
	faction_distribution_coeffs = list( GERMAN = 1)
	battle_name = "bohemia"
	mission_start_message = "<big>Europeans</b> have built a kingdom! The <b>People</b> must thrive on their industry and live peacefully!.</big><br><span class = 'notice'><i>THIS IS AN HRP MAP - </b>No griefing will be tolerated. If you break the rules, you will be banned from the server!<i></span>" // to be replaced with the round's main event
	ambience = list('sound/ambience/jungle1.ogg')
	faction1 = CIVILIAN
	songs = list(
		"Nassau Shores:1" = 'sound/music/nassau_shores.ogg',)
	gamemode = "Medieval RP"
	is_singlefaction = TRUE
/obj/map_metadata/bohemia/New()
	..()
	spawn(18000)
		seasons()

/obj/map_metadata/bohemia/job_enabled_specialcheck(var/datum/job/J)
	..()
	if (istype(J, /datum/job/german))
		. = TRUE
		if (J.is_nomad == TRUE)
			. = FALSE
		if (J.is_medieval == TRUE)
			. = TRUE
		if (J.is_rp == TRUE)
			. = TRUE
		if (J.is_tanker == TRUE)
			. = FALSE
		if (J.is_reichstag == TRUE)
			. = FALSE
		if (J.is_ww2 == TRUE)
			. = FALSE
		if (J.is_ww1 == TRUE)
			. = FALSE

