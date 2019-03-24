///scr_damage(-helth,damage,destroy_other)
if damage = 0
{
    global.helth -= argument0;
    damage = argument1;
    if argument2 = 1 with (other) instance_destroy();
    if !audio_is_playing(snd_oof) audio_play_sound(snd_oof,1,0);
}
