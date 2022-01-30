# X11 Firefox with Fake Pulseaudio sound to Jack

The whole point here is to capture firefox with Jack.

To build the container:

`bash build.sh`

To run Firefox from the container:

`bash run.sh`

or with a URL

`bash run.sh https://walllooper.herokuapp.com/walllooper.html`

# Todo 
- run a dummy jackd
- install jack
- install pulseaudio
- pacmd set-default-sink jack_out
- add to /etc/pulse/default.pa
	load-module module-jack-sink
	load-module module-jack-source


