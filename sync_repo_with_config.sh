# remove old configs
rm -rf i3 conky bspwm nvim mpd rofi ncmpcpp picom fish gtk* polybar dunst kitty sxhkd .tmux.conf
# copy new configs from .config
cp -r ~/.config/bspwm .
#cp -r ~/.config/cmus .
cp -r ~/.config/rofi .
cp -r ~/.config/polybar .
cp -r ~/.config/dunst .
cp -r ~/.config/kitty .
cp -r ~/.config/ncmpcpp .
cp -r ~/.config/sxhkd .
cp -r ~/.config/fish .
cp -r ~/.config/gtk* .
cp -r ~/.config/i3 .
cp -r ~/.config/mpd .
#cp -r ~/.config/conky .
cp -r ~/.config/picom .
cp ~/.Xmodmap .
cp $HOME/.tmux.conf .
# nvim stuff
rm -rf nvim
cp ~/.config/nvim . -r
# make an automatic commit
git add . && git commit -m "This is being done automatically."
