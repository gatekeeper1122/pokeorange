const_value set 2
	const PINKAN_ISLAND_FRUIT_TREE_1
	const PINKAN_ISLAND_FRUIT_TREE_2
	const PINKAN_ISLAND_FRUIT_TREE_3
	const PINKAN_ISLAND_FRUIT_TREE_4
	const PINKAN_ISLAND_TM
	const PINKAN_ISLAND_REVIVE
	const PINKAN_MANIAC

PinkanIsland_MapScriptHeader::

.Triggers: db 0

.Callbacks: db 0

.Scripts:

TrainerManiacShawn:
	trainer EVENT_BEAT_POKEMANIAC_SHAWN, POKEMANIAC, 1, ManiacShawnSeenText, ManiacShawnBeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext ManiacShawnAfterText
	waitbutton
	closetext
	end

PinkanIslandSign:
	jumptext PinkanIslandSignText

PinkanTrainerTipsSign:
	jumptext PinkanTrainerTipsSignText
	
PinkanIslandSweetScent:
	itemball TM_SWEET_SCENT
	
PinkanIslandRevive:
	itemball REVIVE
	
PinkanIslandHiddenLoveBall:
	dwb EVENT_PINKAN_ISLAND_LOVE_BALL, LOVE_BALL
	
PinkanIslandHiddenPinkanBerry:
	dwb EVENT_PINKAN_ISLAND_PINKAN_BERRY, PINKAN_BERRY

.Text:

ManiacShawnSeenText:
	text "Ahaha!"
	
	para "I painted myself"
	line "to blend in with"
	cont "the #MON!"
	
	para "How do you like"
	line "it?"
	done
	
ManiacShawnBeatenText:
	text "PINK! PINK!"
	line "PIIIIIIINK!"
	done
	
ManiacShawnAfterText:
	text "I am an absolute"
	line "MANIAC when it"
	cont "comes to PINKAN"
	cont "ISLAND!"
	done

PinkanIslandSignText:
	text "PINKAN ISLAND"
	line "EAST to KINNOW" 
	cont "ISLAND"
	done
	
PinkanTrainerTipsSignText:
	text "TRAINER TIPS"
	
	para "#MON that are"
	line "caught on PINKAN"
	cont "ISLAND are PINK"
	cont "permanently."
	
	para "However, #MON"
	line "that eat PINKAN"
	cont "BERRIES will be"
	cont "PINK temporarily."
	done

PinkanIslandFruitTree1:
	fruittree FRUITTREE_PINKAN_ISLAND_1

PinkanIslandFruitTree2:
	fruittree FRUITTREE_PINKAN_ISLAND_2

PinkanIslandFruitTree3:
	fruittree FRUITTREE_PINKAN_ISLAND_3
	
PinkanIslandFruitTree4:
	fruittree FRUITTREE_PINKAN_ISLAND_4

PinkanIsland_MapEventHeader:: db 0, 0

.Warps: db 0

.CoordEvents: db 0

.BGEvents: db 4
	signpost 10, 12, SIGNPOST_READ, PinkanIslandSign
	signpost 13, 21, SIGNPOST_READ, PinkanTrainerTipsSign
	signpost 15, 34, SIGNPOST_ITEM, PinkanIslandHiddenLoveBall
	signpost 16, 29, SIGNPOST_ITEM, PinkanIslandHiddenPinkanBerry

.ObjectEvents: db 7
	person_event SPRITE_FRUIT_TREE, 24, 30, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, PinkanIslandFruitTree1, -1
	person_event SPRITE_FRUIT_TREE, 17, 18, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, PinkanIslandFruitTree2, -1
	person_event SPRITE_FRUIT_TREE, 8, 20, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, PinkanIslandFruitTree3, -1
	person_event SPRITE_FRUIT_TREE, 9, 29, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, PinkanIslandFruitTree4, -1
	person_event SPRITE_POKE_BALL, 19, 12, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, PinkanIslandSweetScent, EVENT_PINKAN_ISLAND_TM
	person_event SPRITE_POKE_BALL, 13, 30, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, PinkanIslandRevive, EVENT_PINKAN_ISLAND_REVIVE
	person_event SPRITE_SUPER_NERD, 19, 21, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_TRAINER, 5, TrainerManiacShawn, -1
