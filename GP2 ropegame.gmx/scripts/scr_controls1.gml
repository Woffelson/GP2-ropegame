///scr_controls1(left,right,up,down,a,b,x,y,st,se)

//sideways moves
horizontal = keyboard_check(argument1) - keyboard_check(argument0);
//horizontal = gamepad_axis_value(0,gp_axislh) //gamepad example
if horizontal != 0 //if some moving is pressed either left or right
{
    xscale = sign(horizontal);
    moves = 1;
}
else moves = 0;

//aim
direction = point_direction(xx,yy,mouse_x,mouse_y); //replace this with key version:
if keyboard_check(argument2) || keyboard_check(argument3)
    x=x; //work-in-progress

//jump
if keyboard_check_pressed(argument4) //this gives the first nudge to air
{
    /*if rope != noone //if jumping disables rope:
    {
        with (rope) instance_destroy();
        rope = noone;
    }*/
inst = instance_place(xx,yy,obj_block); //checks collision with blocks
if inst != noone
if (inst.phy_speed_y = 0 && //you cannot jump on flying blocks
    ((physics_test_overlap(xx+2,yy+4,phy_rotation,obj_block) //ground checking both sides
    && physics_test_overlap(xx-2,yy+4,phy_rotation,obj_block)) //walljump:
    || (keyboard_check(argument0) && physics_test_overlap(xx+4,yy,phy_rotation,obj_block)) 
    || (keyboard_check(argument1) && physics_test_overlap(xx-4,yy,phy_rotation,obj_block))))
{
    phy_speed_y = 0; 
    physics_apply_local_impulse(0,0,0,-jumpspeed);
}
}
if keyboard_check(argument4) && phy_speed_y < 0//holding the key jumps up higher/longer
    physics_apply_local_force(0,0,0,-glide);

//NINJA ROPE á la LIERO
if (argument5 != mb_left && keyboard_check_pressed(argument5)) || 
 (argument5 = mb_left && mouse_check_button_pressed(argument5))
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
    physics_apply_local_force(0,0,(rope.x-x)/f,((rope.y + ropelength)-y)/(f/2));
}
