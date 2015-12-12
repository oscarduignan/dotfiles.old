# dotfiles

Use GNU Stow https://www.gnu.org/software/stow/ to symlink dotfiles

For example starting from scratch if I wanted to install my i3 dotfiles which are in the i3 subfolder of this repository

```
sudo apt-get install stow
git clone https://github.com/oscarduignan/dotfiles.git ~/dotfiles
cd ~/dotfiles
stow i3
```
