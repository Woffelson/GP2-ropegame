///Music
if room = room2 && global.music = 0
{
    audio_stop_all();
    if !audio_is_playing(snd_lvl1) && global.alert = 0 audio_play_sound(snd_lvl1,1,1);
    global.music = 1
}
else if room = room3 && global.music = 0
{
    audio_stop_all();
    if global.player_x < 8320 && global.alert = 0
    {
        if !audio_is_playing(snd_lvl2) audio_play_sound(snd_lvl2,1,1);
        global.music = 1
    }
    else global.music = 1;
}
