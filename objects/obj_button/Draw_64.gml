var txt = info[@ 0]

draw_set_alpha(1)
draw_set_font(fnt_ui)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

draw_set_color($000000)
draw_text_transformed(x - 2, y - 2, txt, size, size, angle)
draw_text_transformed(x - 1, y - 1, txt, size, size, angle)
draw_set_color($FFFFFF)
draw_text_transformed(x, y, txt, size, size, angle)