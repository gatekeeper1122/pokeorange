MapTriggers:: ; 4d01e
; Map triggers

trigger_def: MACRO
; db group, map
; dw address
	map \1
	dw \2
ENDM

	trigger_def POKECENTER_2F,              wPokecenter2FTrigger
	trigger_def TRADE_CENTER,               wTradeCenterTrigger
	trigger_def COLOSSEUM,                  wColosseumTrigger
	trigger_def TIME_CAPSULE,               wTimeCapsuleTrigger
	trigger_def HALL_OF_FAME,               wHallOfFameTrigger
	trigger_def KRISS_HOUSE_1F,             wKrissHouse1FTrigger
	trigger_def VALENCIA_ISLAND,            wValenciaIslandTrigger
	trigger_def IVYS_LAB,                   wIvysLabTrigger
	trigger_def ROUTE_49,                   wRoute49Trigger
	trigger_def MIKAN_ISLAND_ROUTE_53_GATE, wMikanIslandRoute53GateTrigger
	trigger_def VALENCIA_PORT,              wValenciaPortTrigger
	trigger_def TANGELO_PORT,               wTangeloPortTrigger
	trigger_def MANDARIN_UNDERGROUND,       wMandarinUndergroundTrigger
	trigger_def ROUTE_56_WEST,              wRoute56WestTrigger

	db -1
; 4d15b