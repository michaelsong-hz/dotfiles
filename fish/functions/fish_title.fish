if status --is-interactive
    function fish_title
        echo $_ ' '
        basename $PWD
    end
end
