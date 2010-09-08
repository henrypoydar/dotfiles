" Vim color file
" Modified from sunburst port

set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "hpoydar"

if has("gui_running")

  " General
  highlight lineNr    guifg=#4f4f4f guibg=Black gui=NONE
  highlight NonText  guifg=#2f2f2f gui=NONE
  highlight VertSplit guifg=#000000 guibg=#1f1f1f gui=NONE
  highlight IncSearch guibg=#16181A
  highlight Cursor    guibg=#DDDDDD
  highlight Search    guibg=#16181A guifg=NONE
  highlight MatchParen guibg=#16181A guifg=#CE864B
  highlight Folded    guibg=#16181A guifg=NONE
  
  " Some defaults for all languages
  highlight Normal    guifg=White   guibg=Black
  highlight Include   guifg=#CE864B guibg=Black
  highlight Identifier guifg=#3387CC guibg=Black
  highlight Keyword   guifg=#CE864B guibg=Black
  highlight Define    guifg=#CE864B guibg=Black 
  highlight Statement guifg=#CE864B guibg=Black gui=NONE
  highlight Function guifg=#89BDFF guibg=Black
  highlight Comment guifg=#AEAEAE guibg=Black gui=italic
  highlight SpecialComment guifg=#AEAEAE guibg=Black gui=italic
  highlight Type    guifg=White gui=NONE
  highlight Constant   guifg=#3387CC guibg=Black
  highlight String     guifg=#65B042 guibg=Black
  highlight Title      guifg=#FFFFFF guibg=Black
  highlight Todo       guifg=#FFFFFF guibg=Black gui=underline

  " NERDTree
  highlight treeUp guifg=#666666 guibg=Black gui=NONE
  highlight treeDir guifg=#999999 guibg=Black gui=NONE
  highlight treeFile guifg=#f1f1f1 guibg=Black gui=NONE
  highlight treeCWD guifg=#cccccc guibg=Black gui=NONE


  " HTML
  highlight htmlTag guifg=#80BDF7 guibg=Black
  highlight htmlEndTag guifg=#80BDF7 guibg=Black
  highlight htmlTagName guifg=#80BDF7 guibg=Black
  highlight htmlArg guifg=#80BDF7 guibg=Black 

  " Ruby specific highlight
  highlight rubyClass guifg=#CE864B guibg=Black 
  highlight rubyInterpolationDelimiter guifg=#DAEFA0 guibg=Black
  highlight rubySymbol guifg=#3387CC guibg=Black
  highlight rubyConstant guifg=#3387CC guibg=Black
  highlight rubyStringDelimiter guifg=#65B042 guibg=Black
  highlight rubyBlockParameter guifg=#3387CC guibg=Black
  highlight rubyInstanceVariable guifg=#3387CC guibg=Black
  highlight rubyInclude guifg=#CE864B guibg=Black
  highlight rubyGlobalVariable guifg=#3387CC guibg=Black
  highlight rubyEval guifg=#DAD085 guibg=Black
  highlight rubyRegexp guifg=#E9B750 guibg=Black
  highlight rubyRegexpDelimiter guifg=#E9B750 guibg=Black

  " Rails specific highlight
  highlight rubyRailsMethod guifg=#DAD085 guibg=Black
  highlight rubyRailsUserClass guifg=#89BDFF guibg=Black gui=underline
  highlight railsConditionsSpecial guifg=#DAEFA0 guibg=Black
  highlight railsOrderSpecial guifg=#DAEFA0 guibg=Black

  " Rails: erb
  highlight erubyDelimiter guifg=#FFFFFF guibg=Black
  highlight erubyRailsRenderMethod guifg=#DAD085 guibg=Black
  highlight erubyRailsHelperMethod guifg=#DAD085 guibg=Black
  highlight javascriptRailsFunction guifg=#CE864B guibg=Black
   
  " Rails: haml
  highlight hamlTag guifg=#80BDF7 guibg=Black
  highlight hamlClassChar guifg=#DAEFA0 guibg=Black
  highlight hamlClass guifg=#DAEFA0 guibg=Black
  highlight hamlIdChar guifg=#DAD085 guibg=Black
  highlight hamlId guifg=#DAD085 guibg=Black
  highlight hamlAttributesDelimiter guifg=#FFFFFF guibg=Black
  highlight hamlRubyOutputChar guifg=#FFFFFF guibg=Black
  highlight hamlObjectDelimiter guifg=#FFFFFF guibg=Black

  " Javascript specific highlight
  highlight javaScript guifg=#FFFFFF guibg=Black
  highlight javaScriptIdentifier guifg=#3387CC guibg=Black
  highlight javaScriptCommentTodo guifg=#AEAEAE guibg=NONE
  highlight javaScriptBraces guifg=#FFFFFF guibg=Black
  highlight javaScriptFunction guifg=#99C843 guibg=Black
  highlight javaScriptType guifg=#94859D guibg=Black
  highlight javaScriptMember guifg=#94859D guibg=Black
  highlight javaScriptGlobal guifg=#94859D guibg=Black
  highlight javaScriptRegexpString guifg=#E1C062 guibg=Black

endif
