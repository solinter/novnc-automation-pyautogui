FROM accetto/ubuntu-vnc-xfce-python-g3

USER root

RUN apt-get update && apt-get install -y \
  xfce4-screenshooter \
  firefox \
  python3-tk \
  python3-dev \
  scrot \
  wget \
  && rm -rf /var/lib/apt/lists/* \
  && chown -R headless /home/headless

RUN pip install pyautogui

USER 1001
