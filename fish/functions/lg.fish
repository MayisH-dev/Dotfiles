# Defined in - @ line 1
function lg --wraps='exa -la --git' --description 'alias lg=exa -la --git'
  exa -la --git $argv;
end
