# Defined interactively
function i3lock
    set -l B '#00000000'  # blank
    set -l C '#ffffff22'  # clear ish
    set -l D '#506070cc'  # default
    set -l T '#dcdcccee'  # text
    set -l W '#93e0e3bb'  # wrong
    set -l V '#94bff3bb'  # verifying
    
    command i3lock -n \
    --insidever-color=$C   \
    --ringver-color=$V     \
    \
    --insidewrong-color=$C \
    --ringwrong-color=$W   \
    \
    --inside-color=$B      \
    --ring-color=$D        \
    --line-color=$B        \
    --separator-color=$D   \
    \
    --verif-color=$T        \
    --wrong-color=$T        \
    --time-color=$T        \
    --date-color=$T        \
    --layout-color=$T      \
    --keyhl-color=$W       \
    --bshl-color=$W        \
    \
    --screen 1            \
    --blur 6              \
    --clock               \
    --indicator           \
#    --timestr="%H:%M:%S"  \
#    --datestr="%A, %m %Y" \
    --keylayout 2;
end
