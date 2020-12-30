overrides
unregistered
	"in my opinion it is wrong to call this method #unregistered and it should instead be called #unregister"
	| status |
	super unregistered.
	status := 'got unregistered. sessions remaining: {1}. WebServer-associated processes: {2}' 
				format: { self class allInstances size . (Process allSubInstances select: [:ea | ea name includesSubstring: 'WebServer']) size }.
	Transcript show: status; cr.
	