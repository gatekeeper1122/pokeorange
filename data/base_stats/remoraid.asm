	db REMORAID ; 223

	db  35,  65,  35,  65,  65,  35
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER
	db 190 ; catch rate
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	db FEMALE_50 ; gender
	db 20 ; step cycles to hatch
	dn 5, 5 ; frontpic dimensions

	db MEDIUM_FAST ; growth rate
	dn AMPHIBIAN, FISH ; egg groups

	; tmhm
	tmhm WATER_PULSE, TOXIC, WHIRLPOOL, BULLET_SEED, SUNNY_DAY, WATER_GUN, ICE_BEAM, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, FRUSTRATION, RETURN, PSYCHIC_M, BUBBLEBEAM, DOUBLE_TEAM, FLAMETHROWER, FIRE_BLAST, SWIFT, FACADE, REST, ATTRACT, THIEF, SURF, DIVE, WATERFALL, SLEEP_TALK, SWAGGER, ENDURE, SIGNAL_BEAM
	; end