draw_set_alpha(1)
draw_set_color($FFFFFF)

if (array_length(convo) > 0) {
	var cc = convo[@ 0]
	var txt = cc[@ 0]
	var yoff = 0
	
	if (string_height(txt) > 64) {
		yoff = 28
	}

	draw_set_font(fnt_font)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)

	var w = string_width(txt)
	var hw = floor(w / 2)

	draw_set_alpha(0.15)
	draw_set_color($000000)
	draw_roundrect_ext(1272 - hw, 1372 - (yoff * 2), 1288 + hw, 1423, 15, 15, false)
	draw_roundrect_ext(1273 - hw, 1373 - (yoff * 2), 1287 + hw, 1422, 12, 12, false)
	draw_roundrect_ext(1274 - hw, 1374 - (yoff * 2), 1286 + hw, 1421, 9, 9, false)
	draw_roundrect_ext(1275 - hw, 1375 - (yoff * 2), 1285 + hw, 1420, 6, 6, false)

	draw_set_alpha(1)
	draw_set_color($FFFFFF)
	draw_text(1280, 1400 - yoff, txt)
}

draw_set_font(fnt_ui)
draw_set_halign(fa_left)
draw_set_valign(fa_top)

draw_text_transformed(40, 230, "LMB to make choices\nRMB to skip dialog\nF to fullscreen\nR to restart\nESC to exit", 0.7, 0.7, 0)
draw_text_transformed(40, 450, "Hole in the Well was made in less than 48 hours for the Ludum Dare 54 compo", 0.5, 0.5, 0)

draw_set_font(fnt_uibold)
draw_set_halign(fa_left)
draw_set_valign(fa_middle)

if (done) {
	var losetxt = "Bankrupt!"
	draw_set_color($000000)
	draw_text(38, 68, losetxt)
	draw_text(39, 69, losetxt)
	draw_set_color($FFFFFF)
	draw_text(40, 70, losetxt)
	exit
}

var montxt = "$" + string(money)
draw_set_color($000000)
draw_text(38, 68, montxt)
draw_text(39, 69, montxt)
draw_set_color($FFFFFF)
draw_text(40, 70, montxt)

draw_set_font(fnt_ui)

var feetxt = "$" + string(fee) + " due in " + string(min(daysleft, 7)) + " day" + (daysleft == 1 ? "" : "s")
draw_set_color($000000)
draw_text(38, 128, feetxt)
draw_text(39, 129, feetxt)
draw_set_color($FFFFFF)
draw_text(40, 130, feetxt)

if (instance_exists(obj_button)) {
	draw_set_color($000000)
	draw_set_alpha(0.3)
	draw_rectangle(0, 0, 2560, 1440, false)
	draw_set_alpha(1)
}

if (email != "") {
	draw_set_font(fnt_ui)
	draw_set_halign(fa_center)
	draw_set_valign(fa_top)
	var bod = email
	var siz = 0.8
	draw_set_color($000000)
	draw_text_transformed(1279, 239, bod, siz, siz, 0)
	draw_text_transformed(1280, 240, bod, siz, siz, 0)
	draw_set_color($FFFFFF)
	draw_text_transformed(1281, 241, bod, siz, siz, 0)
}

draw_set_alpha(0.075)
draw_sprite(spr_noise, 0, 0, 0)