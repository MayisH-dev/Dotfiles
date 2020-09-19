# Defined in - @ line 1
function nint --wraps='nmcli up Internet' --wraps='nmcli connection up Internet' --description 'alias nint=nmcli connection up Internet'
  nmcli connection up Internet $argv;
end
