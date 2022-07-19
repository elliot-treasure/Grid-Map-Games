/// @description Init Game


// rmGame is how we select which type of game to play that's grid based


// We want to hold off on going to the next room immediately, because game maker
// will break itself if we try to goto the next room before all the objects are initialized
// as in you typically won't even see the window show up at all
alarm[0] = room_speed * 1;