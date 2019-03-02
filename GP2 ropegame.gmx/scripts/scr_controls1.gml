///scr_controls1(left,right,up,down,a,b,x,y,st,se)

//sideways moves
horizontal = keyboard_check(argument1) - keyboard_check(argument0);
//horizontal = spede*gamepad_axis_value(0,pad_h) //gamepad example
if horizontal != 0 //if some moving is pressed either left or right
{
    if sign(horizontal) != xscale && controls != 1 direction = 180-direction;
    xscale = sign(horizontal);
}
//aim and ladders
d = (keyboard_check(argument2) - keyboard_check(argument3))*2;
if controls = 1 //key_B = mb_left
{
    if direction > 90 && direction < 270
        xscale2 = -1;
    else xscale2 = 1;
    var mx = window_view_mouse_get_x(0);
    var my = window_view_mouse_get_y(0);
    direction = point_direction(xx,yy,mx,my);
    //direction = point_direction(xx,yy,mouse_x,mouse_y);
    inst = instance_place(xx,yy,obj_lad); //checks collision with ladders
    if inst != noone && d != 0 phy_speed_y = -d;
    if instance_exists(rope)
    {
        ropelength = clamp(ropelength-d,8,256);
    }
}
else
{
if d != 0 //if pressed either up or down
{
    if xscale = -1
        direction = clamp(direction-d,90,270);
    else if direction <= 90
        direction = clamp(direction+d,-90,90);
    else if direction >= 270
        direction = clamp(direction+d,270,450);
}
}

//jump
if keyboard_check_pressed(argument4) //this gives the first nudge to air
{
    /*if rope != noone //if jumping disables rope:
    {
        with (rope) instance_destroy();
        rope = noone;
    }*/
inst = instance_place(xx,yy,obj_slock); //checks collision with blocks
if inst != noone
if (inst.phy_speed_y = 0 && //you cannot jump on flying blocks
    ((physics_test_overlap(xx+2,yy+4,phy_rotation,obj_slock) //ground checking both sides
    && physics_test_overlap(xx-2,yy+4,phy_rotation,obj_slock)) //walljump:
    || (keyboard_check(argument0) && physics_test_overlap(xx+4,yy,phy_rotation,obj_block)) 
    || (keyboard_check(argument1) && physics_test_overlap(xx-4,yy,phy_rotation,obj_block))))
{
    phy_speed_y = 0; 
    physics_apply_local_impulse(0,0,0,-jumpspeed);
}
}
if keyboard_check(argument4) && phy_speed_y < 0//holding the key jumps up higher/longer
{
    physics_apply_local_force(0,0,0,-glide);
    /*inst = instance_place(xx,yy,obj_lad); //checks collision with ladders
    if inst != noone 
        phy_speed_y = -spede;*/
}
jumping = keyboard_check(argument4);
gump = keyboard_check(argument6); //dash/running

//NINJA ROPE á la LIERO
if global.unlock[0] = 1 && ((argument5 != mb_left && keyboard_check_pressed(argument5))
 || (argument5 = mb_left && mouse_check_button_pressed(argument5)))
{
if instance_exists(rope)
{
    with (rope) instance_destroy();
    rope = noone;
}
    else
    {
    ropelength = 16;
    rope = instance_create(x,y,obj_rope);
    with(rope) 
    {
        direction = other.direction;
        phy_rotation = -other.direction;
        host = other.id;
        physics_apply_local_force(0,0,10,0);
    }
    }
}
if instance_exists(rope)
{
    if rope.phy_speed = 0 && rope.grab = false 
    scr_ropeforce(rope,self);
}
