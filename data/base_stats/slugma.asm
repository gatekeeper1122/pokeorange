	db SLUGMA ; 218

	db  40,  40,  40,  20,  70,  40
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE
	db 190 ; catch rate
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	db FEMALE_50 ; gender
	db 20 ; step cycles to hatch
	dn 5, 5 ; frontpic dimensions

	db MEDIUM_FAST ; growth rate
	dn AMORPHOUS, AMORPHOUS ; egg groups

	; tmhm
	tmhm TOXIC, SUNNY_DAY, PROTECT, FRUSTRATION, RETURN, DOUBLE_TEAM, EARTH_POWER, FLAMETHROWER, FIRE_BLAST, FACADE, REST, ATTRACT, ROCK_SMASH, SLEEP_TALK, SWAGGER, ENDURE
	; end