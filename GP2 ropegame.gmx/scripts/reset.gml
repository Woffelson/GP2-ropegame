///reset(restarts_game)
//reset the variables and immediately save the game (also destroys the save...)
set_variables();
save();

//restart the game
if argument0 = 1
game_restart();//room_goto(room2);//room_restart();//
