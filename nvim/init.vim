source ~/.config/nvim/utils.vim

source ~/.config/nvim/general.vim
source ~/.config/nvim/colors_and_fonts.vim
source ~/.config/nvim/edit.vim
source ~/.config/nvim/movement_and_navigation.vim
source ~/.config/nvim/spell.vim
source ~/.config/nvim/status_line.vim
source ~/.config/nvim/ui.vim
source ~/.config/nvim/visual.vim

lua require("init-language-servers")
lua require("plugins")
