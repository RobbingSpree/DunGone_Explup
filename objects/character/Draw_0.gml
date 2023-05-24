
//draw player
//draw_self();
if split == false {
	//if sprite sheet is not split
	var wid = 8; //number of cells across in a sheet
	var cell_wid = 64; //width of cells in pixles
	var hei = 8; //numnber of cells vert in a sheet
	var cell_hei = 64; //height of cell in pixles
	var xx = image_index mod wid; //find which column in sheet the part is in
	var yy = floor(image_index/hei); //find which row in the sheetthe part is in
	var y_off = 24; //an offset to visually move the character to the x,y coord of the object
	//base layer
	draw_sprite_part(under_layer,0,xx*cell_wid,yy*cell_hei,cell_wid,cell_hei,x-cell_wid/2,y-cell_hei+y_off);
	//clothes
	for (var i=0; i<4; i++) {
		if outfit.layers_visible[i] == true
			draw_sprite_part(outfit.layers[i],0,xx*cell_wid,yy*cell_hei,cell_wid,cell_hei,x-cell_wid/2,y-cell_hei+y_off)
	}
} else {
	//if the sprite sheet was split into indervidual frames
	draw_sprite_ext(under_layer,image_index,x,y-y_offset,image_xscale,image_yscale,0,c_white,1);
	//clothes
	for (var i=0; i<4; i++) {
		if outfit.layers_visible[i] == true
			draw_sprite_ext(outfit.layers[i],image_index,x,y-y_offset,image_xscale,image_yscale,0,c_white,1);
	}
}
//debug values
draw_text(20,5,state.state_name);
draw_text(20,20,image_index);
draw_text(20,40,facing);
draw_text(20,60,ani);
draw_text(20,80,y_offset);
//draw_circle(x,y,3,false);


