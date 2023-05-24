
function round_n(num, multi) {
	return round(num/multi)*multi;
}

function reset_drawing_modes() {
	draw_set_halign(-1);
	draw_set_valign(-1);
	draw_set_font(-1);
}