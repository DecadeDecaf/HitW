if (inbox) {

var sub = "[GENE]: Oh hey, an online order."
var sound = choose(snd_online1, snd_online2, snd_online3)

convo = choose(
	[[sub, sound, online_order, ["SUBJECT: lifetime supply of crutons\nFROM: crutonboy45\n\nwas having a salid the other day. yum! but yknow what it was missing? crutons. i’m always out! if only I had a lifetime supply of em\ncan u help me out?\n\nOFFER: $7", [
		["REPLY: Sure thing, crutonboy45", 7],
		["REPLY: No way, you’ll just sell ‘em", 0]
	]]]],
	[[sub, sound, online_order, ["SUBJECT: I wish\nFROM: skeelofan\n\nI wish I was a little bit taller, I wish I was a baller\nI wish I had a girl who looked good, I would call her\nI wish I had a rabbit in a hat with a bat\nAnd a six-four Impala\n\nOFFER: $9", [
		["REPLY: Making your wacky wishes come true…", 9],
		["REPLY: What?", 0]
	]]]],
	[[sub, sound, online_order, ["SUBJECT: infinite wishes\nFROM: karla\n\nI wish for infinite wishes!\n\nOFFER: $14", [
		["REPLY: What could go wrong?", 14],
		["REPLY: Be original for once", 0]
	]]]],
	[[sub, sound, online_order, ["SUBJECT: i suck at games\nFROM: filipe889\n\nI wish I was better at video games. I wanna go pro one day\n\nOFFER: $12", [
		["REPLY: touch grass", 0],
		["REPLY: wish granted, glhf", 12]
	]]]],
	[[sub, sound, online_order, ["SUBJECT: hours\nFROM: jon1978\n\nHello, is your establishment closed on Mondays?\nI was thinking of stopping by.", [
		["REPLY: I wish we were closed on Mondays…", 0],
		["REPLY: No, we’re open on Mondays", 0]
	]]]],
	[[sub, sound, online_order, ["SUBJECT: turtle\nFROM: possum_they\n\nwish my turtle could know how much I love him\n\nOFFER: $5", [
		["REPLY: Granted <3", 5],
		["REPLY: No, sorry", 0]
	]]]],
	[[sub, sound, online_order, ["SUBJECT: THIS IS A ROBBERY\nFROM: anonymous\n\nI wish to rob you.\n\nOFFER: -$20", [
		["REPLY: Huh?!", -20]
	]]]],
	[[sub, sound, online_order, ["SUBJECT: Important\nFROM: Alyusi Islassis\n\nI have been requested by the Nigerian National Petroleum Company to contact you for assistance\nin resolving a matter. The Nigerian National Petroleum Company has recently concluded a large number\nof contracts for oil exploration in the sub-Sahara region. The contracts have immediately produced moneys\nequaling US$40,000,000. The Nigerian National Petroleum Company is desirous of oil exploration in other\nparts of the world, however, because of certain regulations of the Nigerian Government, it is unable to move\nthese funds to another region.\n\nYou assistance is requested as a non-Nigerian citizen to assist the Nigerian National Petroleum Company, and…", [
		["(MARK AS SPAM)", 0]
	]]]]
)
	
} else {
	
var wrong = "Incorrect! I am wishing for a PHD in geology. I believe I will be taking my business elsewhere."

convo = choose(
	[["[CUSTOMER]: Hey, I was gonna wish for some new pins or something, but", snd_puddle1a],
		["I stepped in a puddle on the way here, and now my socks are all wet.", snd_puddle1b],
		["So, I’ve got $2 on me. Could I wish for some dry socks?", snd_puddle1c, make_choice, [[
			["of course", [["[GENE]: Yeah, sure, of course. Why not?", snd_puddle2a, make_sale, [2]], ["[CUSTOMER]: Cool, thanks.", snd_puddle2b]]],
			["only two dollars?", [["[GENE]: Uh, two dollars? No.", snd_puddle3a], ["[CUSTOMER]: Hey, **** you!", snd_puddle3b]]]
		]]]
	],
	[["[HARRY]: My name is Harry Humbleton and I wish for seals.", snd_seal1a],
		["[GENE]: Um, seals?", snd_seal1b],
		["[HARRY]: I just love seals. Swimming seals, smiling seals, bedtime seals…", snd_seal1c],
		["[GENE]: What the **** is a “bedtime seal?”", snd_seal1d],
		["[HARRY]: Hmmm. $9 for seals. This is my final offer.", snd_seal1e, make_choice, [[
			["wish granted?", [["[GENE]: Your wish is my command?", snd_seal2a, make_sale, [0.04]], ["[GENE]: Hey! What gives? This isn’t n— this is four cents! Come back here with the rest!", snd_seal2b], ["[HARRY]: Teehee~!", snd_seal2c]]],
			["I don’t understand", [["[GENE]: I can’t grant a wish I don’t understand.", snd_seal3a], ["[HARRY]: Hmmm. This was a waste of time.", snd_seal3b]]],
			["I hate seals", [["[GENE]: Seals go to hell when they die.", snd_seal4a], ["…No? No!", snd_seal4b]]]
		]]]
	],
	[["[HARRY]: My name is Harry Humbleton and I wish for seals.", snd_sealy1a],
		["[GENE]: Um, seals?", snd_seal1b],
		["[HARRY]: I just love seals. Swimming seals, smiling seals, bedtime seals…", snd_sealy1c],
		["[GENE]: What the **** is a “bedtime seal?”", snd_seal1d],
		["[HARRY]: Hmmm. $9 for seals. This is my final offer.", snd_sealy1e, make_choice, [[
			["wish granted?", [["[GENE]: Your wish is my command?", snd_seal2a, make_sale, [0.04]], ["[GENE]: Hey! What gives? This isn’t n— this is four cents! Come back here with the rest!", snd_seal2b], ["[HARRY]: Teehee~ the most coins for the least money~\nfour pennies for thee~ and seals for me~", snd_sealy2c]]],
			["I don’t understand", [["[GENE]: I can’t grant a wish I don’t understand.", snd_seal3a], ["[HARRY]: Hmmm. This was a waste of time.", snd_sealy3b]]],
			["I hate seals", [["[GENE]: Seals go to hell when they die.", snd_seal4a], ["No! Why would you say that?!", snd_sealy4b]]]
		]]]
	],
	[["[CUSTOMER]: Hey genie!", snd_dance1a],
		["[GENE]: Can I help you?", snd_dance1b],
		["[CUSTOMER]: I wish to see some moves. $12 to bust it down right here right now.", snd_dance1c, make_choice, [[
			["I’m worth more than $12", [["I’m worth more than that.", snd_dance2a], ["[CUSTOMER]: Oooh, unswag! So sad! $12 was my final offer.", snd_dance2b]]],
			["here goes nothing", [["[GENE]: Alright, here goes nothing.", snd_dance3a, cut_music, []], ["(terrible dance music)", snd_dance3b, return_music, []], ["[CUSTOMER]: Whoo! Very cool. Have an epic day my friend.", snd_dance3c, make_sale, [12]]]]
		]]]
	],
	[["[CUSTOMER]: KILL BABIES! BABIES EXPLOOODE! 40 DOLLARS! DIE!", snd_kill1a, make_choice, [[
			["did someone say $40?!", [["I mean… $40 is a lot of money.", snd_kill2a], ["[CUSTOMER]: YEAHHH KILL!", snd_kill2b, make_sale, [40]]]],
			["go away, please", [["[GENE]: Um. Please go away. Please leave. Goodbye…?", snd_kill3a]]]
		]]]
	],
	[["[CUSTOMER]: Hello, simpleton! I bet you can’t guess what I’m wishing for.", snd_nerd1a, make_choice, [[
			["super powers", [[wrong, snd_nerd2a]]],
			["a new car", [[wrong, snd_nerd2a]]],
			["famous friends", [[wrong, snd_nerd2a]]],
			["a PHD", [["I suppose you’re not as impulsive of an ignoramus as I believed! Here's 26 smackaroos!\nOr—as a layman such as yourself would refer to them as—dollars.", snd_nerd3a, make_sale, [26]]]],
			["musical talent", [[wrong, snd_nerd2a]]],
			["admiration & respect", [[wrong, snd_nerd2a]]],
			["let me guess, infinite wishes?", [[wrong, snd_nerd2a]]]
		]]]
	],
	[["[TABATHA]: Hello, lowly service worker. It is I, niche internet micro-celebrity, Tabatha Tuberculosis.", snd_cough1a],
		["Ever since the fumes, I’ve been ridiculed all over social media. All I wish is to be—what’s the word… “unfamous?”", snd_cough1b],
		["[GENE]: Unpopular is the word you’re looking for. How much are you willing to pay for it?", snd_cough1c],
		["[TABATHA]: $20.", snd_cough1d, make_choice, [[
			["deal", [["[GENE]: Okay, deal.", snd_cough2a], ["[TABATHA]: Thank y— (coughs violently)", snd_cough2b, make_sale, [20]]]],
			["aren’t you rich?", [["[GENE]: Say, aren’t you famous? Surely you’ve got more than $20.", snd_cough3a], ["[TABATHA]: Fine. $30.", snd_cough3b, make_sale, [30]]]]
		]]]
	],
	[["[CUSTOMER]: Hey bro, can you bomb the White House for me, please? I'll give you 7 crisp dollars.", snd_bomb1, make_choice, [[
			["I’ll stoop", [["[GENE]: Yeah, I’ll stoop. $7 is $7.", snd_bomb2, make_sale, [7]]]],
			["bad idea", [["[GENE]: Not trying to attract that kind of attention. Please leave.", snd_bomb3]]]
		]]]
	],
	[["[CUSTOMER]: Hello genie. I have $5. I would like to wish for $50, please.", snd_greedy1a],
		["[GENE]: So, you want to multiply the amount of money that you’re giving me by ten?", snd_greedy1b],
		["[CUSTOMER]: Precisely.", snd_greedy1c, make_choice, [[
			["okay then", [["[GENE]: Okay. Your wish is my command. Here’s your $50.", snd_greedy2a, make_sale, [5]], ["[CUSTOMER]: Lovely!", snd_greedy2b], ["[CUSTOMER]: Hello genie. I have $50. I would like to wish for $500, please.", snd_greedy2c], ["[GENE]: Hey! Just because I did it once doesn’t mean I’m going to do it again.", snd_greedy2d], ["[CUSTOMER]: Are you going to grant my wish or not?", snd_greedy2e, make_choice, [[
				["fine", [["[GENE]: Okay. Your wish is my command. Here’s your $500.", snd_greedy3a, make_sale, [50]], ["[CUSTOMER]: Wonderful!", snd_greedy3b], ["[CUSTOMER]: Hello genie. I have $500. I would like to wish for one million dollars, please.", snd_greedy3c], ["[GENE]: ONE MILLION?! You know what that’ll do to the economy if I grant you one million dollars?! That’s — that’s a LOT!", snd_greedy3d], ["[CUSTOMER]: Pretty please?", snd_greedy3e, make_choice, [[
					["whatever, **** the economy", [["[GENE]: Okay. Your wish is my command, here’s your one million dollars.", snd_greedy4a, make_sale, [500]], ["[CUSTOMER]: HOORAY~!", snd_greedy4b], ["[GENE]: I need an employee discount or something after that.", snd_greedy4c, cause_inflation, []]]],
					["NOT happening", [["No, I’m not gonna multiply your money like that.", snd_greedy5a], ["Boo! You’re no fun.", snd_greedy5b]]]
				]]]]],
				["not happening", [["No, I’m not gonna multiply your money like that.", snd_greedy5a], ["Boo! You’re no fun.", snd_greedy5b]]]
			]]]]],
			["not gonna do that", [["No, I’m not gonna multiply your money like that.", snd_greedy5a], ["Boo! You’re no fun.", snd_greedy5b]]]
		]]]
	],
	[["[GENE]: Come in! Welcome.", snd_loss1a],
		["[CUSTOMER]: Oh sh*t nice place ya got down there!", snd_loss1b],
		["[GENE]: Hey, thanks! What brings you here?", snd_loss1c, cut_music, []],
		["[CUSTOMER]: Yeah uhh. About that! I uhm (sniff) I recently had a family member pass.", snd_loss1d],
		["[CUSTOMER]: And I brought $18. Can I just wish for a hug?", snd_loss1e],
		["[GENE]: Oh. Oh my God, no. Girl. Keep the $18. I’ll give you a hug for free.", snd_loss1f],
		["[CUSTOMER]: Oh please, come on. I insist. [GENE]: No, please keep it.", snd_loss1g],
		["[CUSTOMER]: Thanks. It’s already kinda falling down the well though?", snd_loss1h, make_sale, [18]],
		["[GENE]: Okay um. Yeah, no, your wish is my command, I’m sorry. For your loss, and everything. Feel better.", snd_loss1i],
		["[CUSTOMER]: I’ll try.", snd_loss1j, return_music, []],
	],
	[["[CUSTOMER]: Hmm I wanna be… that bitch.", snd_bitch1a],
		["[GENE]: You what? You want to be which ‘bitch’?", snd_bitch1b],
		["[CUSTOMER]: You know, that bitch.", snd_bitch1c],
		["[GENE]: Like—could you be more specific? You wanna be popular? Respected? Beautiful? Or am I supposed to be\ntaking this literally? You know I can’t see whatever poodle or pomeranian might be roaming the streets up there.", snd_bitch1d],
		["[CUSTOMER]: I don’t see what’s so hard to understand.", snd_bitch1e]
	],
	(feminism ?
		[["[WENDELL]: God, I love women. That’s why they call me women-loving Wendell.", snd_wlw1a],
			["[WENDELL]: I’m on a bit of a feminist kick, and I wish more dudes could see how the patriarchy affects them, too.", snd_wlw1b],
			["[GENE]: Hey, good for you, women-loving Wendell. Still got that $24?", snd_wlw1c],
			["[WENDELL]: Yeah bro. Here you go.", snd_wlw1d, make_sale, [24]],
			["[GENE]: Your wish is my command. Safe travels out there.", snd_wlw1e]
		]
	:
		[["[WENDELL]: God, I hate women. That’s why they call me women-hating Wendell.", snd_whw1a],
			["[WENDELL]: I wish to get with a female, and I’m willing to go as high as $24.", snd_whw1b, make_choice, [[
			["okay, man", [["[GENE]: Okay man. Good luck out there. …Gross.", snd_whw2a, make_sale, [24]]]],
			["misogyny is bad", [["[GENE]: I don’t know how to tell you this, Wendell, but hating women is bad.", snd_whw3a], ["[WENDELL]: Hm. Never really thought about it that way. Gonna do some deep introspection. Thanks, bro.", snd_whw3b, inspire_feminism, []]]]
		]]]]
	)
)

}

next_line()