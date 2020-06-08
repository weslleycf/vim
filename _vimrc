"___________________________Gui Options___________________"



set guioptions -=m							"remove the menu bar of gvim
set guioptions -=T							"remove the toolbar of gvim
set guioptions-=l							"Remove the left scroll bar"
set guioptions-=L
set guioptions-=r							"Remove the right scroll bar"
set guioptions-=R

"_________________Visuals___________________"


syntax enable								"enable syntax highlight"
colorscheme atom-dark							"set the the color scheme"
set t_CO=256								"Use 256 colors on terminal Vim"
set nu	 								"display number guide on the left"
set guifont=Fira_Code:h10						"set the font and font size"
set linespace=8								"gVim specific line-height"




"__________________Searching____________________________"



set hlsearch								"Add highlight on search"
set incsearch								"Increment highlight while searching"




"__________________Mappings____________________________"



let mapleader = ','							"Change the default '\' leader key to ','
nmap <Leader>ev :tabedit $MYVIMRC<CR>					"Make the ,ev command edit the vimrc file on a new tab"
nmap <Leader><space> :nohlsearch<CR> 					"Add simple highlight removal"



"___________________Split Management_________________"
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

"___________________Auto-Commands_________________"



augroup autosourcing
	autocmd!							
	autocmd BufWritePost _vimrc source %  				"Automatically source the Vimrc file on save"
augroup END
