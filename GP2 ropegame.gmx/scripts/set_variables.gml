//this is a list of all the variables we want to save

//global.distance = 0; //distance player traveled (0 by default)
//global.saves = 0; //amount of times we've saved (0 by default)
view_xview[0] = 0;
view_yview[0] = 0;
global.player_x = 64; //player x position (half way across the room by default)
global.player_y = 160; //player y position (half way down the room by default);

global.helth = 4;

for (i=0;i<global.unlockables;i++)//loop initialized unlockables (handy if you're lazyass writer like me)
global.unlock[i] = 0; //i0=ninja rope, i1=door1