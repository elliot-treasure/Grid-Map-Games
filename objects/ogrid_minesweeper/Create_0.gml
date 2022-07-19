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

// Total number of mines on the map
numberOfMines = 5;
mine = 99; // This is the number on the map to indicate where a mine is
flags = numberOfMines * 2; // obviously you're not going to win if you're using all of these
flagsInUse = 0;

totalGridSpots = 25; // 5x5, simple calculus. Doing it manually is easier but you could make it modular
mineGrid = [
	[ 0, 0, 0, 0 ,0 ],
	[ 0, 0, 0, 0 ,0 ],
	[ 0, 0, 0, 0 ,0 ],
	[ 0, 0, 0, 0 ,0 ],
	[ 0, 0, 0, 0 ,0 ]
];


