# Defined in - @ line 1
function remv --wraps='sudo pacman -Rcs' --wraps='sudo pacman -Rsu' --description 'alias remv=sudo pacman -Rsu'
  sudo pacman -Rsu $argv;
end
