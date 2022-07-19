/// @description Room Manager

/*
	Notably, you don't need to use brackets for simple one-liners like this. 
	if(key_pressed) game_end(); | is perfectly fine
	good rule of thumb is if you have more than one thing you want to do after
	a condition is met then put them in brackets. technically, you don't have to
	you can just tab them over, but frankly it becomes harder to read the larger the project
	gets, so i would personally just recommend using brackets but those are your options
	Whatever you decide though try to be consistent as that'll throw you off more than anything
*/
if (keyboard_check_pressed(vk_escape)) { 
	game_end();
}