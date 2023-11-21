return {
	{
    'lervag/vimtex',
    lazy = false,
    config = function(_)
      vim.g.tex_flavor='latex'
      vim.g.vimtex_view_method='general'
      vim.g.vimtex_view_general_viewer='start firefox'
      vim.g.vimtex_quickfix_mode=0
      vim.opt.conceallevel=1
      --vim.g.vimtex_syntax_conceal={}
      vim.cmd([[
      hi Conceal ctermbg=none
      ]])
      vim.g.vimtex_syntax_custom_cmds = {
        {name = 'vec', mathmode = true , conceal = true, argstyle = 'bold'}
      }
    end
  },{
    'L3MON4D3/LuaSnip',
    opts = {enable_autosnippets = true}
  },{
    'rafamadriz/friendly-snippets',
    enabled = false,
  },{
    'hrsh7th/nvim-cmp',
    opts = {
      completion = {
        keyword_length = 3,
      }
    }
  }
}
