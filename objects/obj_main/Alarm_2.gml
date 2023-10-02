if (money >= fee) {
	if (inflation) {
	convo = [
		["[IRS]: Tax tiiime~", snd_tax5a],
		["[GENE]: Christ, you’re like a sh*tty landlord.", snd_tax5b],
		["[IRS]: Oh, Gene, all landlords are sh*tty!", snd_tax5c],
		["[GENE]: Yeah. Not the point. Here’s rent.", snd_tax5d, pay_up, []],
		["[IRS]: We love to see it. Now, I should let you know…", snd_tax5e],
		["some idiot introduced a few too many William McKinleys into the spending pool, and inflation has skyrocketed.", snd_tax5f],
		["Next week’s fee is going to be pretty steep. But I’m sure you’ve got it covered. Toodles~!", snd_tax5g, fees_rise, []]
	]
	
	} else {
	
	convo = choose(
		[["[IRS]: It’s tax time, bucko! Pay up or come up.", snd_tax1a],
			["[GENE]: Well, considering I’m trapped down here, here’s your damn payment.", snd_tax1b, pay_up, []],
			["[IRS]: Splendid! I’ll be baaack~", snd_tax1c]
		],
		[["[IRS]: Hellooo~ it’s the Genie IRS! Do you have your Genie Taxes ready?", snd_tax2a],
			["[GENE]: Yeah, I do. Say, why am I taxed separately from the rest of the joints on this block?", snd_tax2b, pay_up, []],
			["[IRS]: Oh, you know. Oppression and lobbyists. [GENE]: Figures.", snd_tax2c]
		],
		[["[IRS]: Money! Money, money, money.", snd_tax3a],
			["[GENE]: Yep.", snd_tax3b, pay_up, []],
			["[IRS]: Why thank you, dear. You're so generous!", snd_tax3c],
			["[GENE]: Yep.", snd_tax3d]
		]
	)
	}
	next_line()
} else {
	lose = true
	convo = choose([
		["[IRS]: Knock, knooock~ it’s the Genie IRS! Here to collect your money and your happiness.", snd_tax4a],
		["[GENE]: I uhm. Don’t have it?", snd_tax4b],
		["[IRS]: Oh no! The happiness?", snd_tax4c],
		["[GENE]: Well, that. But also… the money?", snd_tax4d],
		["[IRS]: Uh oh Gene, my wonderfully-wispy working-class confidante, you know what that means!", snd_tax4e],
		["[GENE]: Nooooooooo~", snd_tax4f]
	])
	next_line()
}