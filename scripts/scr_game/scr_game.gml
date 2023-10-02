function day_pass() {
	if (daysleft <= 7) {
		totaldays++
	}
	daysleft--
	if (monday && daysleft == 7) {
		alarm[3] = 120
	} else if (daysleft <= 0) {
		alarm[2] = 90
	} else {
		inbox = (irandom_range(1, 10) < 4)
		alarm[0] = 75
	}
}

function next_line() {
	audio_play_sound(convo[@ 0][@ 1], 0, false)
}

function convo_over() {
	if (lose) {
		done = true
		audio_sound_gain(snd_music, 0.25, 1000)
	} else {
		day_pass()
	}
}

function make_sale(amt) {
	audio_play_sound(snd_chaching, 0, false)
	money += amt
	if (money < 0) { money = 0 }
}

function make_choice(choices) {
	var len = array_length(choices)
	for (var i = 0; i < len; i++) {
		var choice = choices[@ i]
		var button = instance_create_depth(1280, 340 + (80 * i), depth - 1, obj_button)
		button.info = choice
	}
}

function online_order(body, choices) {
	email = body
	var len = array_length(choices)
	for (var i = 0; i < len; i++) {
		var choice = choices[@ i]
		var button = instance_create_depth(1280, 840 + (80 * i), depth - 1, obj_button)
		button.reply = true
		button.info = [choice[@ 0], []]
		button.val = choice[@ 1]
	}
}

function pay_up() {
	money -= fee
	fee += 15
	daysleft = 8
}

function cut_music() {
	audio_sound_gain(snd_music, 0, 1500)
}

function return_music() {
	audio_sound_gain(snd_music, 0.1, 500)
}

function cause_inflation() {
	inflation = true
}

function inspire_feminism() {
	feminism = true
}

function fees_rise() {
	inflation = false
	fee *= 3
}