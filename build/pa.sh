#!/bin/bash
/usr/bin/pulseaudio --daemon && \
/usr/bin/pactl load-module module-jack-sink   client_name=dockerfirefoxout channels=2 && \
/usr/bin/pactl load-module module-jack-source client_name=dockerfirefoxin  channels=2
