" VIM Configuration - Fabien

" -- Tags
" Thème - Clavier - Aliases - Affichage - Recherche - Beep - Comportement - Syntastic Pymode

" -- Thème
execute pathogen#infect()
call pathogen#helptags()
let g:solarized_termcolors=256
syntax enable
set background=dark
colorscheme solarized
" Utilise la version sombre du thème


" -- Clavier
:imap ,, <Esc>
" Effacer le surlignage des recherches
nmap ,q :nohlsearch<CR>   


" -- Aliases
command Sc SyntasticCheck
command Si SyntasticInfo
command Nt NERDTree


" -- Affichage
set title                 " Met a jour le titre de votre fenetre ou de votre terminal
set number                " Affiche le numero des lignes
set wrap                  " Affiche les lignes trop longues sur plusieurs lignes
set scrolloff=2           " Affiche un minimum de 2 lignes autour du curseur (pour le scroll)
set laststatus=2          " Affiche la status line même sans split
set statusline=%f         " Affiche le nom du fichier ouvert
set statusline=%t       "tail of the filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file


" -- Recherche
set ignorecase            " Ignore la casse lors d'une recherche
set smartcase             " Si une recherche contient une majuscule,
                          " ré-active la sensibilite à la casse
set incsearch             " Surligne les résultats de recherche pendant la
                          " saisie
set hlsearch              " Surligne les resultats de recherche


" -- Beep
set visualbell            " Empeche Vim de beeper


" -- Comportement
" Active le comportement 'habituel' de la touche retour en arriere
set backspace=indent,eol,start
" Cache les fichiers lors de l'ouverture d'autres fichiers
set hidden
" Active la coloration syntaxique
syntax enable
" Active les comportements specifiques aux types de fichiers comme
" la syntaxe et l'indentation
filetype plugin indent on


" -- Syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" Pymode
" let g:pymode_python = 'python3'
