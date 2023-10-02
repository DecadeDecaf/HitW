if (array_length(convo) > 0) {
	var cc = convo[@ 0]
	if (!audio_is_playing(cc[@ 1])) {
		var pause = false
		if (array_length(cc) > 2) {
			script_execute_ext(cc[@ 2], cc[@ 3])
			if ((cc[@ 2]) == make_choice || (cc[@ 2]) == online_order) { pause = true }
		}
		array_delete(convo, 0, 1)
		if (array_length(convo) > 0) {
			next_line()
		} else if (!pause) {
			convo_over()
		}
	}
}

var skip = mouse_check_button_pressed(mb_right)
if (skip) {
	if (array_length(convo) > 0) {
		var cc = convo[@ 0]
		if (audio_is_playing(cc[@ 1])) {
			audio_stop_sound(cc[@ 1])
		}
	}
}

var r = keyboard_check_pressed(ord("R"))
if (r) { game_restart() }

var esc = keyboard_check_pressed(vk_escape)
if (esc) { game_end() }

handle_fullscreen()