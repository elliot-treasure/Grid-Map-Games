/// @description Setup Grid

/*
	What are some game types that use this kind of a setup?
		checkers, chess, minesweeper, bejeweled, tetris, image match,
		cross word puzzles, and sudoku, just to name a few.
	
	For sake of simplicity let's stick to either 16x16 or 32x32 square size.
*/
// This simple two dimensional array will tell us everything we need to know about the playable area
exampleGrid = [
	[0, 0, 0, 0],
	[0, 0, 0, 0],
	[0, 0, 0, 0],
	[0, 0, 0, 0]
];

// this can be a bit overwhelming though if we're looking at a wall of numbers
// especially when determining where peices on the board should go
// so to make this make a little more sense we can use enumeration!
enum EG {
	A1, A2, A3, A4,
	B1, B2, B3, B4,
	C1, C2, C3, C4,
	D1, D2, D3, D4
};





global.map = [ 
	[1,1,0,1,1,0,1,1],
	[1,1,0,1,1,0,1,1],
	[0,0,0,1,1,0,0,0],
	[1,1,1,0,0,1,1,1],
	[1,1,1,0,0,1,1,1],
	[0,0,0,1,1,0,0,0],
	[1,1,0,1,1,0,1,1],
	[1,1,0,1,1,0,1,1]
];