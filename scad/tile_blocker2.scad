

union() {
	translate(v = [0, 0, 0]) {
		union() {
			translate(v = [0, 0, 0]) {
				cylinder($fn = 6, center = true, h = 8, r1 = 21, r2 = 21);
			}
			translate(v = [0, 0, -6.0000000000]) {
				cylinder($fn = 256, center = true, h = 4, r1 = 5, r2 = 5);
			}
		}
	}
	translate(v = [0, 0, 6.5000000000]) {
		cylinder($fn = 6, center = true, h = 5, r1 = 21, r2 = 0);
	}
}
/***********************************************
*********      SolidPython code:      **********
************************************************
 
from gen_block import make_block

__author__ = 'Mark Weinreuter'

from solid import scad_render_to_file

from config import *

tile_blocker_h_mm = 5
top = CY(r1=block_r_mm, r2=0, h=tile_blocker_h_mm, segments=6)

tile_blocker = make_block()
top.bottom = block_base_h_mm/2
tile_blocker += top
scad_render_to_file(tile_blocker, "scad/tile_blocker2.scad")
 
 
************************************************/