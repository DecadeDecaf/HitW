randomize()
exception_unhandled_handler(error)

draw_set_circle_precision(64)

window_set_size(2560, 1440)
display_reset(8, true)

audio_play_sound(snd_music, 0, true)

money = 0
fee = 25

totaldays = 0
daysleft = 8

convo = choose(
	[["[GENE]: Another day another penny hitting my ****ing head, gah!", snd_intro1a]],
	[["[GENE]: Welcome to Gene’s Genie Hole, your wish is my—", snd_intro2a],
		["[GENE]: …Gene’s Genie Hole? Christ, that’s terrible. Still working on the name, folks!", snd_intro2b]],
	[["[GENE]: I’ve gotta be the only genie in the world who can’t even fly…", snd_intro3a]]
)
next_line()

lose = false
done = false

email = ""
inbox = false

monday = false
inflation = false
feminism = false