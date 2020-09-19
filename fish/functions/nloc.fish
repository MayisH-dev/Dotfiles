# Defined in - @ line 1
function nloc --wraps='nmcli up Localnet' --wraps='nmcli connection up Localnet' --description 'alias nloc=nmcli connection up Localnet'
  nmcli connection up Localnet $argv;
end
