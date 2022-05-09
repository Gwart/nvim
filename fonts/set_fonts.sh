#!/bin/bash
mkdir $HOME/.local/share/fonts
cd fonts/fonts && cp *.ttf *.otf $HOME/.local/share/fonts/
fc-cache -fv

