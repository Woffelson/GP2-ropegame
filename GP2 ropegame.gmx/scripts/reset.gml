//reset the variables and immediately save the game (also destroys the save...)
set_variables();
save();

//restart the game
room_goto(room2);//room_restart();//game_restart();
