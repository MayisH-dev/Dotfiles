# Defined interactively
function i3lock
    set -l B '#00000000'  # blank
    set -l C '#ffffff22'  # clear ish
    set -l D '#506070cc'  # default
    set -l T '#dcdcccee'  # text
    set -l W '#93e0e3bb'  # wrong
    set -l V '#94bff3bb'  # verifying
    
    command i3lock -n \
    --insidevercolor=$C   \
    --ringvercolor=$V     \
    \
    --insidewrongcolor=$C \
    --ringwrongcolor=$W   \
    \
    --insidecolor=$B      \
    --ringcolor=$D        \
    --linecolor=$B        \
    --separatorcolor=$D   \
    \
    --verifcolor=$T        \
    --wrongcolor=$T        \
    --timecolor=$T        \
    --datecolor=$T        \
    --layoutcolor=$T      \
    --keyhlcolor=$W       \
    --bshlcolor=$W        \
    \
    --screen 1            \
    --blur 6              \
    --clock               \
    --indicator           \
    --timestr="%H:%M:%S"  \
    --datestr="%A, %m %Y" \
    --keylayout 2;
end
