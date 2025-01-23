" Author: owner888 https://github.com/owner888
" Description: use apple/swift-format (https://github.com/apple/swift-format)

if exists('g:loaded_vim_swift_format_dont_use_this_in_other_plugins_please')
    finish
endif

" Set a special flag used only by this plugin for preventing doubly
" loading the script.
let g:loaded_vim_swift_format_dont_use_this_in_other_plugins_please = 1

let g:vim_swift_format_executable = get(g:, 'vim_swift_format_executable', 'swift-format')
let g:vim_swift_format_lint_command = get(g:, 'vim_swift_format_lint_command', 'swift-format lint %s')
let g:vim_swift_format_format_command = get(g:, 'vim_swift_format_format_command', 'swift-format format --in-place %s')
let g:vim_swift_format_use_ale = get(g:, 'vim_swift_format_use_ale', 0)

if g:vim_swift_format_use_ale == 1
    call ale#swift_format#Enable()
endif

command! -nargs=0 SwiftFormatFormat :call swift_format#FormatCurrentBuffer()
