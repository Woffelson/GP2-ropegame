//this script saves the variables to the text file
ini_open(global.fname) //open ini file

//ini_write_real("GAME","distance",global.distance); //save the distance variable under "distance"
//ini_write_real("GAME","saves",global.saves); //save the saves variable under "saves"
ini_write_real("GAME","viewx",view_xview[0]);
ini_write_real("GAME","viewy",view_yview[0]);
//ini_write_real("GAME","subroom",global.subroom);
ini_write_real("GAME","player_x",global.player_x); //save the player x position variable under "player_x"
ini_write_real("GAME","player_y",global.player_y); //save the player y position variable under "player_y"

ini_write_real("GAME","helth",global.helth);

for (i=0;i<global.unlockables;i++)//loop initialized unlock variables (handy if you're lazyass writer like me)
ini_write_real("GAME","unlock"+string(i),global.unlock[i]);

ini_close(); //close the file
