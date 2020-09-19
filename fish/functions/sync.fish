# Defined in - @ line 1
function sync --wraps='pacman -S' --wraps='sudo pacman -S' --description 'alias sync=sudo pacman -S'
  sudo pacman -S $argv;
end
