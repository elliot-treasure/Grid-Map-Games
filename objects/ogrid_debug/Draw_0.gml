/// @description Draw the grid

for (var ii = 1; ii < gridWidth+1; ii++) {
	for(var jj = 1; jj < gridHeight+1; jj++) {
		var _color = debugGrid[ii-1,jj-1];
		
		switch(_color) {
			case 0: _color = c_green; break;	
			case 1: _color = c_blue; break;	
			case 2: _color = c_red; break;	
		}
		
        draw_rectangle_color(
			x + (jj * 31), // x1
			y + (ii * 31), // y1
			x + (jj * 31) + 30, // x2
			y + (ii * 31) + 30, // y2
			_color, _color, _color, _color,
			true // Outline
		);
        draw_text (
            x + (10 + (jj * 31)),
            y + (5 + (ii * 31)),
            debugGrid[ii-1, jj-1]
        );
	}
}

