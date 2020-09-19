# Defined in - @ line 1
function srch --wraps='pacman -Ss' --description 'alias srch=pacman -Ss'
  pacman -Ss $argv;
end
