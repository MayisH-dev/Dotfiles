function slmv --argument-names src dest --description 'move and create symlink to original file'
    set -a results (test -d $src; and echo dir; or echo file) (test -d $dest; and echo dir; or echo file) 
    mv $src $dest 
    and switch (echo $results)
            case 'dir dir'
                ln -s $dest (dirname $src" ") 
            case 'file file'
                ln -s $dest $src
            case 'file dir'
                ln -s $dest(basename $src) $src
            case '*'
                echo something went wrong
        end
end

