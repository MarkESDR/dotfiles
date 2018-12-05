# Antergos Setup

This directory contains install scripts to setup a machine running fresh Antergos using i3

## Issues loading live usb

 - If seeing `antergos error loading \arch\boot\vmlinuz not found” error. Is this a known problem?`, select `cd/dvd` boot option

## When installing Antergos

 - If using Nvidia Optimus, *DO NOT INSTALL NVIDIA DRIVERS*
 - Otherwise, defaults are fine

## Config stuff

 - In `/etc/lightdm/lightdm.conf`, set `greeter-session=lightdm-slick-greeter`
 - In `/etc/login.defs`, set `CHFN_RESTRICT frwh` 
 - Uncomment the japanese lines in `/etc/locale.gen`

## Tutorials to read after initial setup

 - [Nvidia Optimus](https://antergos.com/wiki/hardware/bumblebee-for-nvidia-optimus/)
 - [Postgres](https://wiki.archlinux.org/index.php/PostgreSQL)
 - [SSH Key](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/)

## Run plugin managers

 - **nvim**: `:PlugInstall`
 - **tmux**: `C-b, I`

## Anki plugins

 - [Night Mode](https://ankiweb.net/shared/info/1496166067)
 - [Japanese Support](https://ankiweb.net/shared/info/3918629684)
