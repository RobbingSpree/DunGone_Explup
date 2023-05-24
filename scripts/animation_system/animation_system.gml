// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function animation_update(){
	delta += delta_time/1000;
	if delta > state.frame_rate[ani] {
		delta =0;
		ani++
		if ani >= state.length {
			ani = 0;
			if state.stateOnEnd != undefined
				state_set(state.stateOnEnd);
			else 
				image_index = state.first_frame[facing];
		} else {
			image_index = state.frames[facing,ani];
		}
	}

	depth = -y;
}