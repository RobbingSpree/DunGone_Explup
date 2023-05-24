/// @description Gather Input

//gather input
var left = keyboard_check(vk_left) || keyboard_check(ord("A"));
var right = keyboard_check(vk_right) || keyboard_check(ord("D"));
var down = keyboard_check(vk_down) || keyboard_check(ord("S"));
var up = keyboard_check(vk_up) || keyboard_check(ord("W"));
var shift = keyboard_check(vk_shift);

inputX = right - left;
inputY = down - up;

//update facing 
//array facing order: down, up, right, left
if down facing = 0;
if up facing = 1;
if left facing = 3;
if right facing = 2;