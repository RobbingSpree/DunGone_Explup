// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function State(name, ind, lin) constructor{
	state_name = name;
	state_index = ind;
	linear = lin;
	frames = [];
	first_frame = [];
	frame_rate = [];
	length = 0;
	stateOnEnd = undefined;
	
	if linear {
		//array facing order: down, up, right, left
		switch state_name {
			case "idle": first_frame =[0,8,16,24]; length = 0; frame_rate=[0]; break;
			case "walk": first_frame =[32,40,48,56]; length = 6; frame_rate=[135,135,135,135,135,135]; break;
			case "push": first_frame =[1,9,17,25]; length = 2; frame_rate=[300,300]; break;
			case "pull": first_frame =[3,11,19,27]; length = 2; frame_rate=[400,400]; break;
		}
			
		for (var i=0; i<length; i++) {
			frames[0,i]=first_frame[0]+i;
			frames[1,i]=first_frame[1]+i;
			frames[2,i]=first_frame[2]+i;
			frames[3,i]=first_frame[3]+i;
		}
	} else {
		switch state_name {
			case "jump": frames=[[5,6,6,7,7],[13,14,14,15,15],[21,22,22,23,23],[29,30,30,31,31]]; length=5; frame_rate=[300,150,100,150,300]; break;
			case "run": frames=[[32,33,38,34,35,39],[40,41,46,43,44,47],[48,49,54,51,52,55],[56,57,62,59,60,63]]; length = 6; frame_rate=[80,55,125,80,55,125]; break; 
		}
		first_frame[0] = frames[0,0];
		first_frame[1] = frames[1,0];
		first_frame[2] = frames[2,0];
		first_frame[3] = frames[3,0];
	}
}

function state_set(_state) {
	if _state == state return;
	state = _state;
	
	image_index = state.first_frame[facing];
	ani = 0;
}

function state_graph(_state) {
	switch _state.name {
		case "idle": _state.stateOnEnd = global.state.idle;
		case "walk": _state.stateOnEnd = global.state.walk;
		case "run": _state.stateOnEnd = global.state.run;
		default: _state.stateOnEnd = global.state.idle;
	}
}
	
function Clothes() constructor{
	enum cloth_layers {
		underware,
		on_skin,
		capes,
		hair
	}
	
	layers_visible = [true,false,false,true]; //defaults to just showing hair and underware since the default character sprite doesn't have any clothes or hats
	defaults = [char_a_p1_1out_boxr_v01,noone,noone,char_a_p1_4har_dap1_v04];	
	layers = [];
	layers = defaults;
	
	
}