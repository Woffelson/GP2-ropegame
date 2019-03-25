ini_open(global.fname); //"read" the variables from the save file

global.rom = ini_read_real("GAME","room",0);
if room != global.rom room_goto(global.rom);
else room_restart();
instance_activate_object(obj_subroom);
//global.distance=ini_read_real("GAME","distance",0); //load AND assign the distance
//global.saves=ini_read_real("GAME","saves",0); //load AND assign the saves
view_xview[0] = ini_read_real("GAME","viewx",0);
view_yview[0] = ini_read_real("GAME","viewy",0);
//global.subroom = ini_read_real("GAME","subroom",0);
global.player_x=ini_read_real("GAME","player_x",0); //load AND assign the player's x position
global.player_y=ini_read_real("GAME","player_y",0); //load AND assign the player's y position

global.helth = ini_read_real("GAME","helth",0);
global.events = ini_read_real("GAME","events",0);
global.ship = ini_read_real("GAME","ship",0);

global.time = ini_read_real("GAME","time",0);
global.sec = ini_read_real("GAME","sec",0);
global.mins = ini_read_real("GAME","mins",0);
global.hour = ini_read_real("GAME","hour",0);

var i;
for (i=0;i<global.unlockables;i++)
global.unlock[i] = ini_read_real("GAME","unlock"+string(i),0);

//move the player to the loaded position
if instance_exists(obj_player)
{
    with(obj_player)
    {
        x = global.player_x;
        y = global.player_y;
        //phy_position_x = x; //these might be hazardous for physics simulation...
        //phy_position_y = y; //I hope this code never runs and master creates player
    }
}
else
{
    with (obj_master) alarm[0] = 5; //creates the player there
}

//global.music = 0;
ini_close(); //close the file
