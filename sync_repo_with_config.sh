# remove old configs
rm -r bspwm rofi fish polybar dunst kitty sxhkd
# copy new configs from .config
cp -r ~/.config/bspwm .
cp -r ~/.config/cmus .
cp -r ~/.config/rofi .
cp -r ~/.config/polybar .
cp -r ~/.config/dunst .
cp -r ~/.config/kitty .
cp -r ~/.config/sxhkd .
# make an automatic commit
git add . && git commit -m "This is an automatic commit to keep the repo up to date"
