" Author: owner888 https://github.com/owner888
" Description: use apple/swift-format (https://github.com/apple/swift-format)

function! swift_format#FormatCurrentBuffer() abort
  let command = substitute(g:vim_swift_format_format_command, "%s", bufname(""), "g")
  " call writefile([command], '/tmp/vimlog.txt', 'a')
  :call system(command)
  :e
endfunction
