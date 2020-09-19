function lslmv -a src dest --description 'move and create symlink to original file, while logging the resulting symlink'
    set -a results (test -d $src; and echo dir; or echo file) (test -d $dest; and echo dir; or echo file) 
    
# Array indices 1-Name(of file or dir) 2-Containing dir 3-Path relative to $HOME

    set -p src  (basename  $src) (dirname  $src) (realpath --relative-to ~  $src)
    set -p dest (basename $dest) (dirname $dest) (realpath --relative-to ~ $dest)
    
    mv $src[4] $dest[4] 
    and switch (echo $results)
            case 'dir dir'
                ln -s ~/$dest[3]/$src[1] ~/$src[3]
                and echo $dest[3]/$src[1] $src[3] >> $dest[4]/links
            case 'file file'
                ln -s ~/$dest[3] ~/$src[3]
                and echo $dest[3] $src[3] >> $dest[2]/links
            case 'file dir'
                ln -s ~/dest[3]/$src[1] ~/src[2]
                and echo $dest[3]/$src[1] $src[3] >> $dest[2]/links
            case '*'
                echo something went wrong
                exit 1
        end
end

