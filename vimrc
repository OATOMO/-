set ts=4  "tab4格
set nu    "顯示行號
if has("syntax")
syntax on  " 語法高亮
endif 
"set guifont=Courier10pitch\ 12
set guifont=TlwgTypeWriter\ Bold\ Oblique\ 14
"colorscheme ron " elflord ron peachpuff default 设置配色方案，vim自带的配色方案保存在/usr/share/vim/vim72/colors目录下

"set mouse=a " Enable mouse usage (all modes) "使用鼠标
set previewwindow " 标识预览窗口
set laststatus=2 " 总显示最后一个窗口的状态行；设为1则窗口数多于一个的时候显示最后一个窗口的状态行；0不显示最后一个窗口的状态行
set ruler " 标尺，用于显示光标位置的行号和列号，逗号分隔。每个窗口都有自己的标尺。如果窗口有状态行，标尺在那里显示。否则，它显示在屏幕的最后一行上。

filetype on "開啓文件類型檢查

 """"""""""""""""""""""""""""""
 " Tag list (ctags)
 """"""""""""""""""""""""""""""
"   if MySys() == "windows"                "设定windows系统中ctags程序的位置
"     let Tlist_Ctags_Cmd = 'ctags'
"   elseif MySys() == "linux"              "设定windows系统中ctags程序的位置
     let Tlist_Ctags_Cmd = '/usr/bin/ctags'
"   endif
   let Tlist_Show_One_File = 1            "不同时显示多个文件的tag，只显示当前文件的
   let Tlist_Exit_OnlyWindow = 1          "如果taglist窗口是最后一个窗口，则退出vim
   let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist窗口
"--------------------------

""""""""""""""""""""""""""""""
"molokai colors
""""""""""""""""""""""""""""""
syntax enable
set t_Co=256
set background=dark
colorscheme molokai	

""""""""""""""""""""""""""""""
"winManaher
""""""""""""""""""""""""""""""
let g:NERDTree_title="[NERDTree]"  
let g:winManagerWindowLayout="NERDTree|TagList"  
    
function! NERDTree_Start()  
exec 'NERDTree'  
endfunction  
      
function! NERDTree_IsValid()  
return 1  
endfunction  
    
nmap wm :WMToggle<CR>  

"NerdCommenter
set nocompatible                " be iMproved
filetype off                    " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdcommenter'
Bundle 'Valloric/YouCompleteMe'
filetype plugin indent on
"""""""""""""""""""""""""""""""""""
