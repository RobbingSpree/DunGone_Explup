/// @description Initalize

moveSpeed = 1.5;
running_mult = 1;
moveX = 0;
moveY = 0;
facing = 0;

split = false; //true if you've split the sheet into indervidual frames, false if it's still one image

//animation variables
ani = 0; //current frame of animation we're on, doesn't correspond to image_index
hold_count = 0; //count for charging or walking into a pushable object
push_max = 80; //max number before walking into an object becomes pushing
hold_max = 0; //max number of frames till a held attack auto launches
jump_dist = 32; //distance the character will travel during a jump
delta = 0; //time in miliseconds used for sub-frame animation handler
image_speed = 0; //set to 0 on purpose, frame progress is handled by a script
image_xscale = 1;
image_yscale = 1;
y_offset = 0; //used for fake vertical elevation
under_layer = char_a_p1_0bas_humn_v00; //skin tone

//outfit variables
outfit = new Clothes();

//initalize state machine
//state call syntax: ("name of state", index for checking if change has occured between frames, if the frames information needs just a start and end point or if all frames need to be named)
global.states = {
	idle : new State("idle",0, true),
	walk : new State("walk",1, true),
	run : new State("run",2, false),
	jump: new State("jump",3, false)
}
global.states.jump.stateOnEnd = global.states.idle;
//set initial state
state = global.states.idle;
