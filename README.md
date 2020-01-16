# Elliott's vimrc

I completely rewrote my vimrc by hand because my last one was borrowed and used tons of features that I didn't use. This one is nice and clean and biased towards JavaScript/Meteor development. 

## Installation

1. First make sure that you've backed up or removed your own vim files (`.vimrc`, `.vim/`).
2. Run install.sh

## Valuable shortcuts

+ `,sv` sources the .vimrc file
+ `<F3>` toggles search highlighting
+ `<F5>` toggles paste mode
+ `:W` save file with sudo
+ `,w` quickly save a file
+ `<c-[jklh]>` fast window switching
+ `,nt` open the NERDTree tab
+ `gcc` toggle comment on the current line

## Some included plugins

+ [Bazel](https://github.com/bazelbuild/vim-bazel) with [maktaba](https://github.com/google/vim-maktaba)
  + Bazel support with required vimscript dependency
+ [delimitMate](https://github.com/Raimondi/delimitMate)
+ [emmet-vim](https://github.com/mattn/emmet-vim)
+ [FZF](https://github.com/junegunn/fzf.vim)
  + <Ctrl-f> to fuzzy find all the things in your current directory.
+ [GitGutter](https://github.com/airblade/vim-gitgutter)
+ [Multiple Cursors](https://github.com/terryma/vim-multiple-cursors)
  + Remapped to `<C-m>` to not conflict with YankRing
+ [nerdtree-git-plugin](https://github.com/Xuyuanp/nerdtree-git-plugin)
+ [NERDTree](https://github.com/scrooloose/nerdtree)
+ [Ultisnips](https://github.com/SirVer/ultisnips)
  + [Supertab](https://github.com/ervandew/supertab) is used to help YCM and Ultisnips play nice together. The tab key should act intelligently when scrolling through the completion list, or expanding a snippet.
+ [vim-airline](https://github.com/bling/vim-airline)
+ [vim-colorschemes](https://github.com/flazz/vim-colorschemes)
+ [vim-commentary](https://github.com/tpope/vim-commentary)
+ [vim-fugitive](https://github.com/tpope/vim-fugitive)
  + `,gs` git status
  + `,gd` git diff
  + `,gb` git blame
  + `,gc` git commit
  + `,gr` git read (clear changes)
  + `,gw` git write (save and add)
+ [vim-javascript](https://github.com/pangloss/vim-javascript)
+ [vim-repeat](https://github.com/tpope/vim-repeat)
+ [vim-sensible](https://github.com/tpope/vim-sensible)
+ [vim-surround](https://github.com/tpope/vim-surround)
+ [YouCompleteMe](https://github.com/Valloric/YouCompleteMe)
