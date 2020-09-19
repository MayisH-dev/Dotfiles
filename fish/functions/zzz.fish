# Defined in - @ line 1
function zzz --wraps='systemctl suspend' --description 'alias zzz=systemctl suspend'
  systemctl suspend $argv;
end
