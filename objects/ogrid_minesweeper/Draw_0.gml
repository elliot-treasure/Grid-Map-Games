/// @description Draw the grid

for (var ii = 1; ii < gridWidth+1; ii++) {
	for(var jj = 1; jj < gridHeight+1; jj++) {
		var _color = mineGrid[ii-1,jj-1][Grid.Val];
		
		switch(_color) {
			case 0: _color = c_green; break;	
			case 1: _color = c_blue; break;	
			case 2: _color = c_red; break;	
		}
		
        draw_rectangle_color(
			x + (jj * 32), // x1
			y + (ii * 32), // y1
			x + (jj * 32) + 29, // x2
			y + (ii * 32) + 29, // y2
			_color, _color, _color, _color,
			true // Outline
		);
		if ( mineGrid[ii-1, jj-1][Grid.Show]) {
	        draw_text (
	            x + (10 + (jj * 32)),
	            y + (5 + (ii * 32)),
	            mineGrid[ii-1, jj-1][Grid.Val]
	        );
		}
	}
}