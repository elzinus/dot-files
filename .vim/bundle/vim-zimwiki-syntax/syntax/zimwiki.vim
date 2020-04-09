" Language: ZimWiki
" Maintainer: Joan Rivera <joan.manuel.rivera+dev@gmail.com>
" URL: https://github.com/joanrivera/vim-zimwiki-syntax
" Updates: Elzinus
"   - Add markdown related syntax (footnote, blockquote)
"   - Add syntax codeblock
"   - Changed listItem so only bullet is highlighted
"     More consisticy and higlight of emph, ** and __
"     within listitem
"
"     TODO: make sure bullets are automated on enter
" License: MIT

if exists('b:current_syntax') && b:current_syntax == 'zimwiki'
  finish
endif

syn match zimwikiHeader1 '^=\{6} .\+ =\{6}[[:space:]]*$'
syn match zimwikiHeader2 '^=\{5} .\+ =\{5}[[:space:]]*$'
syn match zimwikiHeader4 '^=\{4} .\+ =\{4}[[:space:]]*$'
syn match zimwikiHeader4 '^=\{3} .\+ =\{3}[[:space:]]*$'
syn match zimwikiHeader5 '^=\{2} .\+ =\{2}[[:space:]]*$'

syn match zimwikiLink               '\[\[.\{-1,}\]\]'
syn match zimwikiListItem           '^[[:blank:]]*\*'
syn match zimwikiCheckbox           '\[[ \*x]\]'
syn match zimwikiStrong             '\*\*.\{-1,}\*\*'
syn match zimwikiEmphasis           '\/\/.\{-1,}\/\/'
syn match zimwikiUnderline          '__.\{-1,}__'
syn match zimwikiVerbatim           '\'\'.\{-1,}\'\''
syn match zimwikiStrikeThrough      '\~\~.\{-1,}\~\~'
syn match zimwikiImage              '{{.\{-1,}}}'
syn match zimwikiSub                '_{.\{-1,}}'
syn match zimwikiSup                '\^{.\{-1,}}'


" Syntax for markdown style
"   Usefull if you use Zim for writing but convert to
"   Markdown, pandoc etc for further editing
syn match zimwikifootnote           '\[\^.\{-1,}\]'
syn match zimwikiquote              '^[[:blank:]]*> .\+'

hi def link zimwikiquote	        SpecialComment
hi def link zimwikifootnote	        Conditional

" Codeblocks
syn region zimwikiCode              start="'''" end="'''"
syn region zimwikiCodeBlock         start="{{{" end="}}}"
    " In Zim codeblock plugin is needed

hi def link zimwikiHeader1	        Title
hi def link zimwikiHeader2	        Title
hi def link zimwikiHeader3	        Title
hi def link zimwikiHeader4	        Title
hi def link zimwikiHeader5	        Title

hi def link zimwikiLink 	        Underlined
hi def link zimwikiListItem	        Special
hi def link zimwikiCheckbox	        Conditional
hi def link zimwikiStrong	        Type
hi def link zimwikiEmphasis	        Identifier
hi def link zimwikiUnderline	    Underlined
hi def link zimwikiVerbatim	        SpecialComment
hi def link zimwikiStrikeThrough	Comment
hi def link zimwikiImage	        Float
hi def link zimwikiSub	            Number
hi def link zimwikiSup	            Number

hi def link zimwikiCode	            SpecialComment
hi def link zimwikiCodeBlock	    SpecialComment



if !exists('b:current_syntax')
  let b:current_syntax = 'zimwiki'
endif
