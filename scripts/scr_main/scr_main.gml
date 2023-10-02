function handle_fullscreen() {
	var f = keyboard_check_pressed(ord("F"))
	if (f) { switch_fullscreen() }
}

function switch_fullscreen() {
	var full = !window_get_fullscreen()
	set_fullscreen(full)
}

function set_fullscreen(full) {
	window_set_fullscreen(full)
	if (full) {
		window_set_size(2560, 1440)
	} else {
		if (display_get_width() >= 1920) {
			window_set_size(1280, 720)
		} else {
			window_set_size(960, 540)
		}
	}
	display_reset(8, true)
}

function error(struct) {
	show_debug_message("ERROR: " + string(struct))
}