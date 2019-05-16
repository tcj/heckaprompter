rendering
renderFreshStartOn: html
	"this might show up if user is not logged in"
	html heading
			level: 3;
			with: 'No texts yet!'.
		html heading
			level: 4;
			with: 'Log in and save a text to get started.'