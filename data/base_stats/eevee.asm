	db EEVEE ; 133

	db  55,  55,  50,  55,  45,  65
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL
	db 45 ; catch rate
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	db FEMALE_12_5 ; gender
	db 35 ; step cycles to hatch
	dn 5, 5 ; frontpic dimensions

	db MEDIUM_FAST ; growth rate
	dn FIELD, FIELD ; egg groups

	; tmhm
	tmhm TOXIC, SUNNY_DAY, PROTECT, RAIN_DANCE, FRUSTRATION, IRON_TAIL, RETURN, DIG, SHADOW_BALL, DOUBLE_TEAM, SWIFT, FACADE, REST, ATTRACT, HEADBUTT, SLEEP_TALK, SWAGGER, ENDURE
	; end