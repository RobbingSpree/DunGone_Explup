/// @description Insert description here
// You can write your code in this editor

animation_update();

if state == global.states.idle || state == global.states.walk || state == global.states.run {
	//check for move modifiers
	var m_mod = 1 + running_mult * keyboard_check(vk_shift);
	moveX = lerp(moveX, inputX * moveSpeed*m_mod, 0.2);
	moveY = lerp(moveY, inputY * moveSpeed*m_mod, 0.2);
	
	//check for collision
	if !position_meeting(x+moveX,y,solid_) 
		//Commit to movement
			x += moveX;
	if !position_meeting(x,y+moveY,solid_) 
		//commit to movement
		y += moveY;

	//flip 
	if inputX != 0 || inputY != 0 {
		//image_xscale = sign(inputX);
		//sprite update to move
		if keyboard_check(vk_shift) 
			state_set(global.states.run);
		else
			state_set(global.states.walk);
	} else {
		//sprite update to idle
		state_set(global.states.idle);
	}
}

depth = -y; //replace with z tilting 