overrides
unregistered
	"in my opinion it is wrong to call this method #unregistered and it should instead be called #unregister"
	super unregistered.
	Transcript show: ('got unregistered. sessions remaining: {1}' format: { self class allInstances size }); cr.
	