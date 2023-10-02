var newconvo = info[@ 1]

if (abs(x - mouse_x) < 100 && abs(y - mouse_y) < 30) {
	size += 0.03
	if (size > 1) { size = 1 }
	angle += 1
	if (angle > 6) { angle = 6 }
	if (mouse_check_button_pressed(mb_left)) {
		audio_play_sound(snd_ding, 0, false)
		switch (info[@ 0]) {
			case "REPLY: I wish we were closed on Mondays…":
				obj_main.monday = true
				break
			case "REPLY: No, we’re open on Mondays":
				obj_main.monday = false
				break
			default:
				break
		}
		if (reply) {
			with (obj_main) {
				if (other.val != 0) {
					make_sale(other.val)
				}
				email = ""
				convo_over()
			}
		} else {
			with (obj_main) {
				convo = newconvo
				next_line()
			
			}
		}
		instance_destroy(obj_button)
	}
} else {
	size -= 0.03
	if (size < 0.88) { size = 0.88 }
	angle -= 1
	if (angle < 0) { angle = 0 }
}