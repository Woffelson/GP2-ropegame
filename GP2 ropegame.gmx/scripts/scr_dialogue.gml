d[0] = snd_k1;
d[1] = snd_dr1;
d[2] = snd_k2;
d[3] = snd_dr2;
d[4] = snd_k3;
d[5] = snd_dr3;
d[6] = snd_k4;
d[7] = snd_dr4;
d[8] = snd_k5;
d[9] = snd_k6;

var i;
for (i=0; i<=9; i++)
{
    if tcount = i+5
    {
        audio_play_sound(snd_zzz,1,0);
        if i > 0
        {
            if audio_is_playing(d[i-1]) audio_stop_sound(d[i-1]);
        }
        if !audio_is_playing(d[i]) audio_play_sound(d[i],1,0);
    }
}
