" VIM Configuration - Nicolas Birckel
" Annule la compatibilite avec l'ancetre Vi : totalement indispensable
" Activation de vim-plug
call plug#begin()
" Nous mettrons nos plugins ici
" Installation de vim-fern
Plug 'ericbn/vim-solarized'	
Plug 'lambdalisue/fern.vim'
call plug#end()
" -- Activation de la souris
set mouse=a
set nocompatible
" -- Affichage
set title " Met a jour le titre de votre fenetre ou de
" votre terminal
set number " Affiche le numero des lignes
set ruler " Affiche la position actuelle du curseur
set wrap " Affiche les lignes trop longues sur plusieurs
" lignes
set scrolloff=3 " Affiche un minimum de 3 lignes autour du curseur
" (pour le scroll)
" -- Recherche
set ignorecase " Ignore la casse lors d'une recherche
set smartcase " Si une recherche contient une majuscule,
" re-active la sensibilite a la casse
set incsearch " Surligne les resultats de recherche pendant la
" saisie
set hlsearch " Surligne les resultats de recherche
" -- Beep
set visualbell " Empeche Vim de beeper
set noerrorbells " Empeche Vim de beeper
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
" Utilise la version sombre de Solarized
set background=dark
" Active les couleurs 24-bits dans le terminal
set termguicolors
colorscheme solarized
set background=dark  
" Activation de vim-fern au lancement de vim
augroup FernGroup
autocmd! *
autocmd VimEnter * ++nested Fern . -drawer -stay
augroup END


