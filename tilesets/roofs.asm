
LoadMapGroupRoof:: ; 1c000
	ld a, [MapGroup]
	ld e, a
	ld d, 0
	ld hl, MapGroupRoofs
	add hl, de
	ld a, [hl]
	cp $ff
	ret z
	ld hl, Roofs
	ld bc, $90
	call AddNTimes
	ld de, VTiles2 tile $0a
	ld bc, $90
	call CopyBytes
	ret
; 1c021

MapGroupRoofs: ; 1c021i
	db -1 ; dummy group
	db  4 ; group 1
	db  2 ; group 2
	db -1 ; group 3
	db  1 ; group 4
	db  4 ; group 5
	db -1 ; group 6
	db -1 ; group 7
	db  2 ; group 8
	db  2 ; group 9
	db  1 ; group 10
	db  0 ; group 11
	db  0 ; group 12
; 1c03c

Roofs: ; 1c03c
INCBIN "gfx/tilesets/roofs/0.2bpp"
INCBIN "gfx/tilesets/roofs/1.2bpp"
INCBIN "gfx/tilesets/roofs/2.2bpp"
INCBIN "gfx/tilesets/roofs/3.2bpp"
INCBIN "gfx/tilesets/roofs/4.2bpp"
; 1c30c