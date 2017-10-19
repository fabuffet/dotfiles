" VIM Configuration - Vincent Jousse
" Annule la compatibilite avec l'ancetre Vi : totalement indispensable
set nocompatible
call pathogen#infect()
" Utilise la version sombre de Solarized
" set background=dark
colorscheme monokai-phoenix

:imap ,, <Esc>
:map ,, <Esc>

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
nmap ,q :nohlsearch<CR>

" -- Beep
set visualbell            " Empeche Vim de beeper
set noerrorbells          " Empeche Vim de beeper

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


