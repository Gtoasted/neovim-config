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
  s({trig="RR", snippetType="autosnippet", dscr="Real numbers", condition=math},
    {t("\\R")}
  ),

  s({trig="aa", snippetType="autosnippet", dscr="Alpha", condition=math},
    {t("\\alpha")}
  ),

  s({trig="bb", snippetType="autosnippet", dscr="Beta", condition=math},
    {t("\\beta")}
  ),

  s({trig="gg", snippetType="autosnippet", dscr="Gamma", condition=math},
    {t("\\gamma")}
  ),

  s({trig="del", snippetType="autosnippet", dscr="Delta", condition=math},
    {t("\\delta")}
  ),

  s({trig="Del", snippetType="autosnippet", dscr="C Delta", condition=math},
    {t("\\Delta")}
  ),

  s({trig="ee", snippetType="autosnippet", dscr="Epsilon", condition=math},
    {t("\\varepsilon")}
  ),

  s({trig="tht", snippetType="autosnippet", dscr="Theta", condition=math},
    {t("\\theta")}
  ),

  s({trig="ll", snippetType="autosnippet", dscr="Lambda", condition=math},
    {t("\\lambda")}
  ),

  s({trig="([%d%s]?)pi", regTrig=true, snippetType="autosnippet", dscr="Pi", condition=math}, {
    f(function(_, snip) return snip.captures[1] end),
    t("\\pi")
  }),

  s({trig="rho", snippetType="autosnippet", dscr="Rho", condition=math},
    {t("\\rho")}
  ),

  s({trig="vrho", snippetType="autosnippet", dscr="rho variant", condition=math},
    {t("\\varrho")}
  ),

  s({trig="ss", snippetType="autosnippet", dscr="Sigma", condition=math},
    {t("\\sigma")}
  ),

  s({trig="phi", snippetType="autosnippet", dscr="Phi", condition=math},
    {t("\\phi")}
  ),

  s({trig="vphi", snippetType="autosnippet", dscr="Phi Variant", condition=math},
    {t("\\varphi")}
  ),

  s({trig="psi", snippetType="autosnippet", dscr="Psi", condition=math},
    {t("\\psi")}
  ),

  s({trig="Psi", snippetType="autosnippet", dscr="C Psi", condition=math},
    {t("\\Psi")}
  ),

  s({trig="mu", snippetType="autosnippet", dscr="Mu", condition=math},
    {t("\\mu")}
  ),

  s({trig="nu", snippetType="autosnippet", dscr="Nu", condition=math},
    {t("\\nu")}
  ),

  s({trig="om", snippetType="autosnippet", dscr="Omega", condition=math},
    {t("\\omega")}
  ),

  s({trig="Chi", snippetType="autosnippet", dscr="Chi", condition=math},
    {t("\\mathcal{X}")}
  ),
}
