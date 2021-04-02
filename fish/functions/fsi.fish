# Defined in - @ line 1
function fsi --wraps='dotnet fsi --langversion:preview' --description 'alias fsi=dotnet fsi --langversion:preview'
  dotnet fsi --langversion:preview $argv;
end
