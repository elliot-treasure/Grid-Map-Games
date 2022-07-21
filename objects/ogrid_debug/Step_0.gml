/// @description Insert description here
// You can write your code in this editor

// Time between previous and current frame
frame += delta_time/1000000;


// Now that we know what our regions are thanks to 'debugGridCoordinates', we can use this data to determine which box we're clicking in
// If we have clicked inside of a region then we want to make a change to said region

// If they have clicked inside of the box then we want to change the cooresponding boxes information
var _mbLeft = mouse_check_button_pressed(mb_left);
var _mbRight = mouse_check_button_pressed(mb_right);
if (_mbLeft || _mbRight) {
	/*
		Overview
			We could setup indexes for which row is which, but that's a bit overkill for the scope of this game
			First we're going to see if the mouse_x is outside of the lowest or greatest x's range
			if so then there is no chance it's in any of the boxes, if it is though then we try to determine which
			collumn it is currently in then narrowing it down based on the y coordinate
	*/
	
	// If we are not within the range then we're done here
	if (mouse_x < debugGridCoordinates[0][0][0] || // x1
		mouse_x > debugGridCoordinates[7][7][2]) || // x2
		mouse_y < debugGridCoordinates[0][0][1] || // y1
		mouse_y > debugGridCoordinates[7][7][3] { // y2
		// show_message("out of bounds"); | This is only needed to see if you clicked out of bounds
		exit; // Notably, this exits the ENTIRE STEP EVENT, in this one specific scenario that's totally OK
	}
	
	for(var i = 0; i < gridWidth; i++) {
		for(var j = 0; j < gridHeight; j++) {
			// checks to see if it's larger than x2, if so move onto the next in the loop
			if (mouse_x > debugGridCoordinates[i][j][2]) continue;
			
			// if it's also larger than x1 we might have a match
			if (mouse_x > debugGridCoordinates[i][j][0]) {
				if (mouse_y > debugGridCoordinates[i][j][1] && mouse_y < debugGridCoordinates[i][j][3]) {
					if (_mbLeft) debugGrid[i][j] = debugGrid[i][j] == 1? 0 : 1;
					if (_mbRight) debugGrid[i][j] = 2;
				}
			}
			
		}
	}
}

