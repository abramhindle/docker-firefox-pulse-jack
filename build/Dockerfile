FROM ubuntu:20.04

RUN apt-get update && apt-get install -y firefox
RUN apt-get install -y sudo
RUN apt-get install -y pulseaudio-module-jack
# from Fábio Rehm https://postd.cc/running-gui-apps-with-docker/
# Replace 1000 with your user / group id
RUN export uid=1000 gid=1000 && \
    mkdir -p /home/developer && \
    echo "developer:x:${uid}:${gid}:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd && \
    echo "developer:x:${uid}:" >> /etc/group && \
    echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer && \
    chmod 0440 /etc/sudoers.d/developer && \
    chown ${uid}:${gid} -R /home/developer

USER developer
ENV HOME /home/developer
CMD ["sh","-c","pulseaudio --daemon && \
    pactl load-module module-jack-sink   client_name=dockerfirefoxout channels=2 && \    
    pactl load-module module-jack-source client_name=dockerfirefoxin  channels=2 && \    
    /usr/bin/firefox"]
# CMD /usr/bin/firefox
