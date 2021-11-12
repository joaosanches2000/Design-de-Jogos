NineSliceBoxStretched(sTextBox, x1, y1, x2, y2, background);
draw_set_font(fText);
draw_set_halign(fa_center);
draw_set_halign(fa_top);
draw_set_color(c_black);
draw_sprite(sHades, image_index, (x1+x2)/8, y1+8)
image_speed = 0.1;
var _print = string_copy(message,1,textProgress);
draw_text((x1+x2)/4, y1+35, _print);
draw_set_color(c_white);
draw_text((x1+x2)/4, y1+35, _print);