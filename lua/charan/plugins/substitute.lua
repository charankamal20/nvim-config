return {
  'gbprod/substitute.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  config = function() 
    local substitute = require('substitute')

    substitute.setup()
    local keymap = vim.keymap

    vim.keymap.set('n', 's', substitute.operator, { desc='substitue with motion' })
    vim.keymap.set('n', 'ss', substitute.line, { desc='substitue line' })
    vim.keymap.set('n', 'S', substitute.eol, { desc= 'substitue to end of line'})
    vim.keymap.set('x', 's', substitute.visual, { desc= 'Substitute in visual mode'})
  end, 
}
