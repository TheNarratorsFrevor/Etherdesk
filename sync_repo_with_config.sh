# remove old configs
rm -r bspwm rofi fish polybar dunst kitty sxhkd .tmux.conf
# copy new configs from .config
cp -r ~/.config/bspwm .
cp -r ~/.config/cmus .
cp -r ~/.config/rofi .
cp -r ~/.config/polybar .
cp -r ~/.config/dunst .
cp -r ~/.config/kitty .
cp -r ~/.config/sxhkd .
cp $HOME/.tmux.conf .
# make an automatic commit
git add . && git commit -m "This is an automatic commit to keep the repo up to date"
