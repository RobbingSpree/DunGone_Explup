if wasd_or_esdf == "WASD" {
	if w {draw_sprite(wasd_keys_spr,0,x,y)}
	if a {draw_sprite(wasd_keys_spr,1,x,y)}
	if s {draw_sprite(wasd_keys_spr,2,x,y)}
	if d {draw_sprite(wasd_keys_spr,3,x,y)}
} else {
	if e {draw_sprite(wasd_keys_spr,0,x,y)}
	if s {draw_sprite(wasd_keys_spr,1,x,y)}
	if d {draw_sprite(wasd_keys_spr,2,x,y)}
	if f {draw_sprite(wasd_keys_spr,3,x,y)}	
}

draw_self();