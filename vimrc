" VIM Configuration - Fabien
" Annule la compatibilite avec Vi : 
set nocompatible

" -- Tags
" Thème - Clavier - Aliases - Affichage - Recherche - Beep - Comportement - Syntastic


" -- Thème
execute pathogen#infect()
colorscheme monokai-phoenix
" Utilise la version sombre du thème
set background=dark


" -- Clavier
:imap ,, <Esc>
:map ,, <Esc>
nmap ,q :nohlsearch<CR>


" -- Aliases
:command Sc SyntasticCheck
:command Si SyntasticInfo
:command Nt NERDTree


" -- Affichage
set title                 " Met a jour le titre de votre fenetre ou de
                          " votre terminal
set number                " Affiche le numero des lignes
set ruler                 " Affiche la position actuelle du curseur
set wrap                  " Affiche les lignes trop longues sur plusieurs
                          " lignes
set scrolloff=2           " Affiche un minimum de 2 lignes autour du curseur
                          " (pour le scroll)

" -- Recherche
set ignorecase            " Ignore la casse lors d'une recherche
set smartcase             " Si une recherche contient une majuscule,
                          " ré-active la sensibilite à la casse
set incsearch             " Surligne les résultats de recherche pendant la
                          " saisie
set hlsearch              " Surligne les resultats de recherche


" -- Beep
set visualbell            " Empeche Vim de beeper
set noerrorbells          " Empeche Vim de beeper


" -- Comportement
" Active le comportement 'habituel' de la touche retour en arriere
set backspace=indent,eol,start
" Cache les fichiers lors de l'ouverture d'autres fichiers
set hidden
" Active la coloration syntaxique
syntax enable
" Active les comportements specifiques aux types de fichiers comme
" la syntaxe et l'indentation
filetype on
filetype plugin on
filetype indent on


" -- Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
