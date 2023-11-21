local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep

-- Check if math mode is active
local function math()
  return vim.api.nvim_eval('vimtex#syntax#in_mathzone()') == 1
end

return {
  s({trig="RR", snippetType="autosnippet", dscr="Real numbers", context=math},
    {t("\\mathbb{R}")}
  ),

  s({trig="aa", snippetType="autosnippet", dscr="Alpha", context=math},
    {t("\\alpha")}
  ),

  s({trig="bb", snippetType="autosnippet", dscr="Beta", context=math},
    {t("\\beta")}
  ),

  s({trig="gg", snippetType="autosnippet", dscr="Gamma", context=math},
    {t("\\gamma")}
  ),

  s({trig="ee", snippetType="autosnippet", dscr="Epsilon", context=math},
    {t("\\varepsilon")}
  ),

  s({trig="tht", snippetType="autosnippet", dscr="Theta", context=math},
    {t("\\theta")}
  ),

  s({trig="ll", snippetType="autosnippet", dscr="Lambda", context=math},
    {t("\\lambda")}
  ),

  s({trig="pi", snippetType="autosnippet", dscr="Pi", context=math},
    {t("\\Pi")}
  ),

  s({trig="rho", snippetType="autosnippet", dscr="Rho", context=math},
    {t("\\rho")}
  ),

  s({trig="vrho", snippetType="autosnippet", dscr="rho variant", context=math},
    {t("\\varrho")}
  ),

  s({trig="ss", snippetType="autosnippet", dscr="Sigma", context=math},
    {t("\\sigma")}
  ),

  s({trig="phi", snippetType="autosnippet", dscr="Phi", context=math},
    {t("\\phi")}
  ),

  s({trig="vphi", snippetType="autosnippet", dscr="Phi Variant", context=math},
    {t("\\varphi")}
  ),

  s({trig="psi", snippetType="autosnippet", dscr="Psi", context=math},
    {t("\\psi")}
  ),
}
