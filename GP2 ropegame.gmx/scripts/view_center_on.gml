///view_center_on(view,x,y,min_x,min_y,max_x,max_y)
// Keskittää viewin koordinaatteihin
view_xview[argument0] = round(clamp(argument1 - view_wview[argument0]/2,argument3,argument5 - view_wview));
view_yview[argument0] = round(clamp(argument2 - view_hview[argument0]/2, argument4, argument6 - view_hview));

