/// @description Setup Grid
// init
frame = 0;

#region Grid Introduction
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

// So now we run into our first conundrum. Its easier to visually see a maps layout by using numbers on the grid
// But logically it's more difficult to manage what goes where. 
// So to make this easier to read lets associate letters AND numbers based on the grids row and column
// Note: depending on the game you're making it might be easier to reserve the letters as columns instead of rows, and vice versa
// so thats something you'll need to determine on a case by case basis
enum EG {
	A1, A2, A3, A4,
	B1, B2, B3, B4,
	C1, C2, C3, C4,
	D1, D2, D3, D4
};

// Now when we're looking at the grid it'll be a bit easier to tell where we're at!

// alternatively you can create a variable for each position
var A1 = 1, A2 = 2, B1 = 3, B2 = 4;

// or use single dimension arrays
var A = [0, 0, 0, 0];
var B = [0, 0, 0, 0];

// Either of these will work as well so go with whichever you prefer

// Anyways, We'll want to update this every step, but isn't this already easier to make sense of?! 
exampleGrid = [
	//  1     2      3      4
	[EG.A1, EG.A2, EG.A3, EG.A4], // A
	[EG.B1, EG.B2, EG.B3, EG.B4], // B
	[EG.C1, EG.C2, EG.C3, EG.C4], // C
	[EG.D1, EG.D2, EG.D3, EG.D4]  // D
];

// Now that some of the basics are out of the way, lets get into the first step...

#endregion Grid Introduction

// Rather than trying to center and mess with the grid we will just change the base position of
// the object itself. So, we can use it as an anchor point inside of any visual 'component'!

x = room_width * 0.25;
y = room_height * 0.05;

/*
	Bonus Knowledge
		So, when it comes to programming there are some operations that are inherently just faster
		Multiplication > division is such an occasion. Here is an article from IBM on the matter:
		https://www.ibm.com/support/pages/which-better-divide-2-or-multiply-05#:~:text=Yes%2C%20indeed%2C%20there%20is%20a,multiplying%20is%20quicker%20than%20dividing.
		Of course, this only becomes a major factor if you're doing a lot of these so don't be afraid to use division (this is meant more as a "fun fact")
*/

// You could try to automaticlly get this from array_length() but frankly, this is simpler
gridWidth = 8;
gridHeight = 8;

// Debug grid setup
debugGrid = [
	[1,1,0,1,1,0,1,1],
	[1,1,0,1,1,0,1,1],
	[0,0,0,1,1,0,0,0],
	[1,1,1,0,0,1,1,1],
	[1,1,1,0,0,1,1,1],
	[0,0,0,1,1,0,0,0],
	[1,1,0,1,1,0,1,1],
	[1,1,0,1,1,0,1,1]
];

// We only really need to set this the one time as apposed to updating it every single step like we need to for the drawing
// the layout will be [x1,y1,x2,y2] per each entry since we need the region of the rectangle to see where we're at
debugGridCoordinates = [
	[ [0,0,0,0], [0,0,0,0], [0,0,0,0], [0,0,0,0], [0,0,0,0], [0,0,0,0], [0,0,0,0], [0,0,0,0] ],
	[ [0,0,0,0], [0,0,0,0], [0,0,0,0], [0,0,0,0], [0,0,0,0], [0,0,0,0], [0,0,0,0], [0,0,0,0] ],
	[ [0,0,0,0], [0,0,0,0], [0,0,0,0], [0,0,0,0], [0,0,0,0], [0,0,0,0], [0,0,0,0], [0,0,0,0] ],
	[ [0,0,0,0], [0,0,0,0], [0,0,0,0], [0,0,0,0], [0,0,0,0], [0,0,0,0], [0,0,0,0], [0,0,0,0] ],
	[ [0,0,0,0], [0,0,0,0], [0,0,0,0], [0,0,0,0], [0,0,0,0], [0,0,0,0], [0,0,0,0], [0,0,0,0] ],
	[ [0,0,0,0], [0,0,0,0], [0,0,0,0], [0,0,0,0], [0,0,0,0], [0,0,0,0], [0,0,0,0], [0,0,0,0] ],
	[ [0,0,0,0], [0,0,0,0], [0,0,0,0], [0,0,0,0], [0,0,0,0], [0,0,0,0], [0,0,0,0], [0,0,0,0] ],
	[ [0,0,0,0], [0,0,0,0], [0,0,0,0], [0,0,0,0], [0,0,0,0], [0,0,0,0], [0,0,0,0], [0,0,0,0] ]
];

// Populate the coordinates with the grid data
for (var ii = 0; ii < gridWidth; ii++) {
	for(var jj = 0; jj < gridHeight; jj++) {
		debugGridCoordinates[ii][jj][0] = (x + (jj * 32)) + 32; // x1
		debugGridCoordinates[ii][jj][1] = (y + (ii * 32)) + 32; // y1
		debugGridCoordinates[ii][jj][2] = (x + (jj * 32) + 30) + 32; // x2
		debugGridCoordinates[ii][jj][3] = (y + (ii * 32) + 30) + 32; // y2
	}
}


