//this is a list of all the variables we want to save

global.rom = room2;
//global.distance = 0; //distance player traveled (0 by default)
//global.saves = 0; //amount of times we've saved (0 by default)
view_xview[0] = 0;
view_yview[0] = 0;
//global.subroom = noone; //no work, sniff
global.player_x = 64; //player x position (half way across the room by default)
global.player_y = 160; //player y position (half way down the room by default);

global.helth = 4;
global.events = -2; //keeps track on one time happenings like dialogues
global.ship = 0;

var i;
for (i=0;i<global.unlockables;i++)//loop initialized unlockables (handy if you're lazyass writer like me)
global.unlock[i] = 0; //i0=ninja rope, i1=door1
