"___________________________Gui Options___________________"



set guioptions -=m							"removes the menu bar of gvim
set guioptions -=T							"removes the toolbar of gvim



"_________________Visuals___________________"


syntax enable								"enable syntax highlight"
colorscheme desert							"set the the color scheme"
set nu	 								"displays number guide on the left"
set guifont=Fira_Code:h10						"set the font and font size"
set linespace=8								"gVim specific line-height"




"__________________Searching____________________________"



set hlsearch								"Add highlight on search"
set incsearch								"Increment highlight while searching"




"__________________Mappings____________________________"



let mapleader = ','							"Changes the default '\' leader key to ','
nmap <Leader>ev :tabedit $MYVIMRC<CR>					"Make the ,ev command edit the vimrc file on a new tab"
nmap <Leader><space> :nohlsearch<CR> 					"Add simple highlight removal"





"___________________Auto-Commands_________________"



augroup autosourcing
	autocmd!							
	autocmd BufWritePost _vimrc source %  				"Automatically source the Vimrc file on save"
augroup END
