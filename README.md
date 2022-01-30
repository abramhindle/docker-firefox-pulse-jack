# X11 Firefox with Fake Pulseaudio sound to Jack

The whole point here is to capture firefox with Jack.

# Todo 
- run a dummy jackd
- install jack
- install pulseaudio
- pacmd set-default-sink jack_out
- add to /etc/pulse/default.pa
	load-module module-jack-sink
	load-module module-jack-source


