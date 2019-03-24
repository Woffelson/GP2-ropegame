global.time += 1; //how would ms work? room_speed/1000 wouldn't probably work...
if global.time >= room_speed //default: 60 (fps)
{
    if global.sec > 59
    {
        if global.mins > 59
        {
            global.hour += 1;
            global.mins = 0;
        }
        else global.mins += 1;
        global.sec = 0;
    }
    else global.sec += 1;
    global.time = 0;
}
