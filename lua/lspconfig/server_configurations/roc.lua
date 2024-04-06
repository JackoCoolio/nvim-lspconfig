local util = require 'lspconfig.util'

return {
  default_config = {
    cmd = { 'roc_language_server' },
    filetypes = { 'roc' },
    root_dir = function(fname)
      return util.root_pattern('main.roc')(fname)
        or util.find_git_ancestor(fname)
    end,
  },
  docs = {
    description = [[
https://github.com/roc-lang/roc

Language Server Protocol implementation for Roc.
    ]],
    default_config = {
      root_dir = "util.root_pattern('main.roc')(fname)"
        .. '\n or util.find_git_ancestor(fname)',
    },
  },
}
