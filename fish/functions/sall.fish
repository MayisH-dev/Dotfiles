# Defined in - @ line 1
function sall --wraps='pacman -Syu' --wraps='sudo pacman -Syu' --description 'alias sall=sudo pacman -Syu'
  sudo pacman -Syu $argv;
end
