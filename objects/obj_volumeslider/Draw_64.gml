draw_set_color($FFFFFF)

draw_set_alpha(0.75)
draw_rectangle(32, 508, 718, 536, true)

draw_set_alpha(0.25)
draw_rectangle(34, 510, 34 + 682, 534, false)

draw_set_alpha(0.75)
draw_rectangle(34, 510, 34 + (682 * volume), 532, false)

draw_set_color($FFFFFF)
draw_set_halign(fa_center)
draw_set_valign(fa_bottom)

draw_set_font(fnt_ui)
draw_set_alpha(1)
draw_text_transformed(375, 590, string(round(volume * 100)) + "%", 0.7, 0.7, 0)