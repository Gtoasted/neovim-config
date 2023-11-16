return {
	{
    'lervag/vimtex',
    lazy = false,
    config = function(_)
      vim.g.tex_flavor='latex'
      vim.g.vimtex_view_method='general'
      vim.g.vimtex_view_general_viewer='firefox'
      vim.g.vimtex_quickfix_mode=0
      vim.opt.conceallevel=1
      --vim.g.vimtex_syntax_conceal={}
      vim.cmd([[
      hi Conceal ctermbg=none
      ]])
    end
  },{
    'L3MON4D3/LuaSnip',
    opts = {enable_autosnippets = true}
  },{
    'rafamadriz/friendly-snippets',
    enabled = false,
  }
}
