//Controls initialization (possible for gamepad too?)
controls = 1;

switch(controls)
{
case 0:
{
key_r = vk_right;
key_l = vk_left;
key_u = vk_up;
key_d = vk_down;
key_A = ord("M");
key_B = ord("N");
key_X = ord("B");
key_Y = ord("V");
key_start = vk_enter;
key_select = vk_rcontrol;
break;//*/
}
case 1:
{
key_r = ord("D");//vk_right;
key_l = ord("A");//vk_left;
key_u = ord("W");//vk_up;
key_d = ord("S");//vk_down;
key_A = vk_space;//ord("M");
key_B = mb_left;//ord("N");
key_X = vk_lshift;//ord("B");
key_Y = ord("V");
key_start = vk_enter;
key_select = vk_rcontrol;
break;
}
/*case 2:
{
pad_lh = gp_axislh;
pad_lv = gp_axislv;
pad_rh = gp_axisrh;
pad_rv = gp_axisrv;
key_A = gp_face1;
key_B = gp_face2;
key_X = gp_face3;
key_Y = gp_face4;
key_start = gp_start
key_select = gp_select;
break;
}*/
}
