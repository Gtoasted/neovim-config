return {
	{
    'lervag/vimtex',
    lazy = false,
    config = function(_)
      vim.g.tex_flavor='latex'
      vim.g.vimtex_view_method='zathura'
      vim.g.vimtex_quickfix_mode=1
    end
  },{
    'KeitaNakamura/tex-conceal.vim',
    lazy = false,
    config = function(_)
      vim.opt.conceallevel=1
      vim.g.tex_conceal='abdmg'
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
