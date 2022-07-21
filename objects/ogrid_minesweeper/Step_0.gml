/// @description Stepping
frame += delta_time/1000000;

// If they have clicked inside of the box then we want to change the cooresponding boxes information
var _mbLeft = mouse_check_button_pressed(mb_left);
var _mbRight = mouse_check_button_pressed(mb_right);
if (_mbLeft || _mbRight) {
	var _gw = gridWidth - 1;
	var _gh = gridHeight - 1;
	
	// If we are not within the range then we're done here
	if (mouse_x < mineGridCoords[0][0][0] || // x1
		mouse_x > mineGridCoords[_gw][_gh][2]) || // x2
		mouse_y < mineGridCoords[0][0][1] || // y1
		mouse_y > mineGridCoords[_gw][_gh][3] { // y2
		// show_message("out of bounds"); | This is only needed to see if you clicked out of bounds
		exit; // Notably, this exits the ENTIRE STEP EVENT, in this one specific scenario that's totally OK
	}
	
	for(var i = 0; i < gridWidth; i++) {
		for(var j = 0; j < gridHeight; j++) {
			// checks to see if it's larger than x2, if so move onto the next in the loop
			if (mouse_x > mineGridCoords[i][j][2]) continue;
			
			// if it's also larger than x1 we might have a match
			if (mouse_x > mineGridCoords[i][j][0]) {
				if (mouse_y > mineGridCoords[i][j][1] && mouse_y < mineGridCoords[i][j][3]) {
					if (_mbLeft) mineGrid[i][j] = mineGrid[i][j] == 1? 0 : 1;
					if (_mbRight) mineGrid[i][j] = 2;
				}
			}
			
		}
	}
}