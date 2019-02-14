//scr_text("Text",speed,x,y);

//creates an object and carries the text to an object to draw to

//x,y here and the text object
txt = instance_create(argument2, argument3, obj_text);

with (txt){
    padding = 8;
    maxlength = view_wview[0];
    text = argument0;
    spd = argument1;
    font = font0;
    
    text_length = string_length(text);
    font_size = font_get_size(font);
    
    draw_set_font(font);
    
    //max text width and height
    text_width = string_width_ext(text,font_size + (font_size/2), maxlength);
    text_height = string_height_ext(text,font_size + (font_size/2), maxlength);
    
    boxwidth = text_width + (padding*2);
    boxheight = text_height + (padding*2);
    
}
