/// @description Init the grid

#region Game Design
/*
	For starters... what is minesweeper? How do we play it?
		The objective is simple, don't click on a mine.
		The win condition is to mark ALL of the mines, and clear the board.
	Mechanics
		clicking a blank space will show all of the adjacent, non-mine, squares
		Notably, there will NEVER be a blank space next to a mine. 
		Mines will have numbers surrounding them, these numbers indicate how many 
		squares surrounding them (one block only) are mines
		Right clicking a number will reveal all non-mines around that specific block
		If you have a flag placed then you CANNOT click on that square (right click to set flag)
		
		Below is an example map of how this would look
		______________
		| x 1 0 1 2 x |
		| 1 1 0 1 x 2 |
		| 0 0 0 1 1 1 |
		| 1 1 0 0 0 0 |
		| x 1 0 0 0 0 |
		-------------- 
*/
#endregion Game Design

// init
frame = 0;
x = room_width * 0.25;
y = room_height * 0.05;

// Total number of mines on the map
numberOfMines = 5;
mine = 99; // This is the number on the map to indicate where a mine is
flags = numberOfMines * 2; // obviously you're not going to win if you're using all of these
flagsInUse = 0;

totalGridSpots = 25; // 5x5, simple calculus. Doing it manually is easier but you could make it modular

gridWidth = 4;
gridHeight = 4;
mineGrid[0][0] = 0;
mineGridCoords[0][0] = 0;

// Init Array based on preset height and width
for (h = 0; h < gridHeight; h++) {
	for (w = 0; w < gridWidth; w++) {
		mineGrid[h][w] = 0;
	}
}

// Init Array Coordinates based on preset height and width
for (h = 0; h < gridHeight; h++) {
	for (w = 0; w < gridWidth; w++) {
		mineGridCoords[h][w] = [ 0, 0, 0, 0];
	}
}

// Populate the coordinates with the grid data
for (var ii = 0; ii < gridWidth; ii++) {
	for(var jj = 0; jj < gridHeight; jj++) {
		mineGridCoords[ii][jj][0] = (x + (jj * 32)) + 32; // x1
		mineGridCoords[ii][jj][1] = (y + (ii * 32)) + 32; // y1
		mineGridCoords[ii][jj][2] = (x + (jj * 32) + 30) + 32; // x2
		mineGridCoords[ii][jj][3] = (y + (ii * 32) + 30) + 32; // y2
	}
}


