///scr_rope()
ropelength = 16;
rope = instance_create(x,y,obj_rope);
with(rope) 
{
    direction = other.direction;
    phy_rotation = -other.direction;
    host = other.id;
    physics_apply_local_force(0,0,10,0);
}
