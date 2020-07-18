#!/usr/bin/env bash

cheerup () {

	list=$((RANDOM%=10))

	cheers=('You are a lovely person.'
	'Everything is going to be A-Okay'
	'You are a ray of sunshine.'
	'You look really cute today.'
	'Being an adult means YOU decide what to have for dinner.'
	'Your style is FLAWLESS.'
	'Think about eating your favorite food - yum!'
	'You have TOTATLLY got this!'
	'You are capable, competent, and kick-ass.'
	'You are a superstar!'
	'Super cool animals like giraffes and manatees exist - how cool is that?'
	)

	echo ${cheers[$list]}

}

cheerup
